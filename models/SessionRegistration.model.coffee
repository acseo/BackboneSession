# Objet de session
#
# Uses the url :
#   'logged' to GET an user thanks to HTTP header property "Authorization" with value "Bearer"
#   'login_check' to POST an _username and _password to check credentials, authenticate, and get token
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.RegistrationModel = Bb.Model.extend
    url: 'registration'
    validation:
      _username:[
        { required: true, msg: "Nom d'utilisateur obligatoire" }
      ]
      _password:[
        { required: true, msg: 'Mot de passe obligatoire' }
        { credentialsMatch: true, async: true}
      ]
      _password_confirmation:[
        { required: true, msg: 'Mot de passe obligatoire' }
        { credentialsMatch: true, async: true}
      ]
