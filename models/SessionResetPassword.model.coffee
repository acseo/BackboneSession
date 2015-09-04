# Objet de reset password
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.ResetPasswordModel = Bb.Model.extend
    url: 'resetting/send-email'

    validation:
      _username:[
        { required: true }
      ]
