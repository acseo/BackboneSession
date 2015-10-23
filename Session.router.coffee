# Session router
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.SessionRouter = Mn.AppRouter.extend(appRoutes:
    'login': 'login'
    'registration': 'registration'
    'logout': 'logout'
    'mot-de-passe-oublie' : 'forgotPassword'
    'modifier-mot-de-passe/:token' : 'updatePassword'
    'change-password' : 'changePassword'
    'mon-profil' : 'myProfile'
    'check-email' : 'checkEmail'
  )
