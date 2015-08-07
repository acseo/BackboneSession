# Session controller
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.controller =
    login: ->
      App.page.show new Session.LoginView {model: window.session}
    logout: ->
      window.session.destroy()
      window.session = Session.session = new Session.Model()
      App.headerUser.show new Session.LoginView {model: window.session}
      app.navigate '/', { trigger:true, replace: true }
    forgotPassword: ->
      App.page.show new Session.SessionForgotPasswordView
    updatePassword: ->
      App.page.show new Session.SessionUpdatePasswordView
    myProfile: ->
      App.page.show new Session.SessionMyProfileView

  @onStart = ->
    window.router = new Session.SessionRouter(controller: Session.controller)
    window.session = Session.session = new Session.Model()
    App.commands.trigger 'session:started', window.session

    return
