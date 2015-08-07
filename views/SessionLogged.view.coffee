# Logged area of the header
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.LoggedView = Mn.ItemView.extend
    template: '#tpl-session-logged'
    modelEvents:
      'change': 'render'
