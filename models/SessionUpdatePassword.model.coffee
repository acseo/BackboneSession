# Objet de session
#
# Uses the url :
#   'logged' to GET an user thanks to HTTP header property "Authorization" with value "Bearer"
#   'login_check' to POST an _username and _password to check credentials, authenticate, and get token
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.UpdatePasswordModel = Bb.Model.extend
    url: 'resetting/reset-password'
    validation:
      token:[
        { required: true }
      ]
      _password:[
        { required: true, msg: 'Mot de passe obligatoire' }
      ]
      _confirmation_password:[
        { required: true, msg: 'Mot de passe obligatoire' }
      ]
