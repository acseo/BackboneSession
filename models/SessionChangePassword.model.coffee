# Objet de update password
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.ChangePasswordModel = Bb.Model.extend
    url: 'resetting/change-password'

    validation:
      currentPassword:[
        { required: true, msg: 'Renseignez le mot de passe actuel'}
      ]
      plainPassword:[
        { required: true, msg: 'Mot de passe obligatoire' }
      ]
      _confirmation_password:[
        { required: true, msg: 'Mot de passe obligatoire' }
      ]
