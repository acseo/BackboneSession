# Forgot password view
#
app.module 'OfficeLegal.Session', (Session, App, Bb, Mn, $, _) ->

  Session.SessionForgotPasswordView = Mn.ItemView.extend
    template: '#tpl-session-forgot-password'
