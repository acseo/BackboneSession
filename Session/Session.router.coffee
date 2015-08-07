# Session router
#
app.module 'OfficeLegal.Session', (Session, App, Bb, Mn, $, _) ->

  Session.SessionRouter = Mn.AppRouter.extend(appRoutes:
    'login': 'login'
    'logout': 'logout'
    'mot-de-passe-oublie' : 'forgotPassword'
    'modifier-mot-de-passe' : 'updatePassword'
    'mon-profil' : 'myProfile'
  )
