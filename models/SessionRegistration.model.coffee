# Session registration model
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.RegistrationModel = Bb.Model.extend
    urlRoot: 'registration'
    schema: {
        mail:       { validators: ['required', 'email'], title: 'Mail' },
        password:   { type: 'Password', title: 'Password' },
    }