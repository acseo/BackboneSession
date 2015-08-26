# Forgot password view
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.SessionCheckEmailView = Mn.ItemView.extend
    template: '#tpl-session-check-email'
