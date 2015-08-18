# Registration view
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.RegistrationView = Mn.LayoutView.extend
    template: '#tpl-general-registration'
    regions:
      form: '#registration-form'