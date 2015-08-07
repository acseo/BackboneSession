# My profile view
#
app.module 'OfficeLegal.Session', (Session, App, Bb, Mn, $, _) ->

  Session.SessionMyProfileView = Mn.ItemView.extend
    template: '#tpl-session-my-profile

