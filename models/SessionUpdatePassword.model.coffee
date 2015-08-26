# Objet de session
#
# Uses the url :
#   'logged' to GET an user thanks to HTTP header property "Authorization" with value "Bearer"
#   'login_check' to POST an _username and _password to check credentials, authenticate, and get token
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.Model = Bb.Model.extend
    url: 'logged'
    validation:
      _username:[
        { required: true, msg: "Nom d'utilisateur obligatoire" }
      ]
      _password:[
        { required: true, msg: 'Mot de passe obligatoire' }
        { credentialsMatch: true, async: true}
      ]
    initialize: ->
      # Loads session information from cookie
      @set 'token', $.cookies.get('token')

      # Saves session information to cookie
      @bind 'sync', (model, datas, req)->
        if model.get('token')
          App.commands.trigger 'session:started', model
          $.cookies.set('token', model.get('token'))

    save: (attrs, options) ->
      options.url = "login_check"
      Bb.Model.prototype.save.call(this, attrs, options)
      # call api to get user informations and store them in session

    destroy: (options) ->
      @trigger('destroy', @)
      $.cookies.del('token')

    isAuthenticated: ->
      return @get('token')


  _.extend Bb.Validation.Async.validators, {
    credentialsMatch: (value, attr, customValue, model, computed, deferred) ->
      creds = {
        _username: model.get('_username'),
        _password: model.get('_password')
      }

      model.save creds,
        validate: false,
        success: deferred.resolve
        error: ->
          deferred.reject('Identifiants incorrects')
      return
  }
