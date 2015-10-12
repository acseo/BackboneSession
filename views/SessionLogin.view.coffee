# Login form of the header
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.LoginView = Mn.ItemView.extend
    template: '#tpl-session-login'
    ui:
      _username: '[name="_username"]'
      _password: '[name="_password"]'
      submit: 'button'

    events:
      'submit': 'login'

    initialize: ->
      # /!\ async
      Bb.Validation.Async.bind @

    remove: ->
      Bb.Validation.Async.unbind @
      Bb.View::remove.apply @, arguments

    login: (e) ->
      e.preventDefault()

      session = window.session

      session.set '_username', @ui._username.val()
      session.set '_password', @ui._password.val()

      session.isValid true, ->
        session.unset '_username'
        session.unset '_password'
        App.headerUser.show new Session.LoggedView {model: window.session}
        #do call to get firstname and lastname to set session model and display window
        $.ajax({
          type: "GET"
          url: "logged"
          success: (data) ->
            window.session.set data
        })

      , ->
        session.unset '_username'
        session.unset '_password'
