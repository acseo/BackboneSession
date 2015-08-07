# Logged area of the header
#
app.module 'OfficeLegal.Session', (Session, App, Bb, Mn, $, _) ->

  Session.LoggedView = Mn.ItemView.extend
    template: '#tpl-session-logged'
    modelEvents:
      'change': 'render'
