# Update Password view
#
app.module 'OfficeLegal.Session', (Session, App, Bb, Mn, $, _) ->

  Session.SessionUpdatePasswordView = Mn.ItemView.extend
    template: '#tpl-session-update-password'
