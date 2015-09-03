# Objet de update password
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.UpdatePasswordModel = Bb.Model.extend
    url: 'resetting/reset-password'

    validation:
      token:[
        { required: true }
      ]
      plainPassword:[
        { required: true, msg: 'Mot de passe obligatoire' }
      ]
      _confirmation_password:[
        { required: true, msg: 'Mot de passe obligatoire' }
      ]
