# Forgot password view
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.SessionForgotPasswordView = Mn.ItemView.extend
    template: '#tpl-session-forgot-password'
