# Registration form of the header
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.RegistrationView = Mn.ItemView.extend
    template: '#tpl-session-registration'
    ui:
      _username: '[name="_username"]'
      _password: '[name="_password"]'
      _password_confirmation: '[name="_password_confirmation"]'
      submit: 'button'

    events:
      'submit': 'registration'

    initialize: ->
      # /!\ async
      Bb.Validation.Async.bind @

    remove: ->
      Bb.Validation.Async.unbind @
      Bb.View::remove.apply @, arguments

    registration: (e) ->
      e.preventDefault()
      if @model.isValid true
        @model.save()
      else
        console.log "not valid"
