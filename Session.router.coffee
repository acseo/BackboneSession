# Session router
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.SessionRouter = Mn.AppRouter.extend(appRoutes:
    'login': 'login'
    'logout': 'logout'
    'mot-de-passe-oublie' : 'forgotPassword'
    'modifier-mot-de-passe' : 'updatePassword'
    'mon-profil' : 'myProfile'
  )
