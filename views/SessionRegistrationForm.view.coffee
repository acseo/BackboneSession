# Registration view
#
app.module 'ACSEO.Session', (Session, App, Bb, Mn, $, _) ->

  Session.RegistrationFormView = Mn.ItemView.extend
    model: Session.RegistrationModel
    events:
        'submit': 'submit'
    initialize: ->
        @form = new Backbone.Form(model: @model, submitButton: 'Envoyer')

        @model.on 'error', @onError.bind(this) #call custom inline errors insertion

    render: ->
        @form.render()
        @$el.html @form.render().el
    submit: ->
        view = @
        if @form.commit({ validate: true })
            event.preventDefault
        else
            @model.save()
                .done (model) ->
                    App.module("ACSEO.Toolkit").Alert "Votre demande de contact a été envoyée avec succès", "success"
                    view.model.unset 'id' #thanks to this line, we won't make a PUT if we submit this form again
                .fail (data) ->
                    App.module("ACSEO.Toolkit").Alert "Une erreur a eu lieu lors de la soumission du formulaire", "danger"