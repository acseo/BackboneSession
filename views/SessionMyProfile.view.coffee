# My profile view
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.SessionMyProfileView = Mn.ItemView.extend
    template: '#tpl-session-my-profile'
