polar = require 'polar'
analyze = require './analyze'
validate = require './validate'
fakeIdea = require './fake-idea'

app = polar.setup_app
    port: 8287

app.get '/', (req, res) ->
    fake_idea = fakeIdea()
    res.render 'index', {fake_idea}

app.post '/', (req, res) ->
    idea = req.body.idea
    validate idea, (err, valid) ->
        if valid
            analyze idea, (err, response) ->
                res.render 'response', {idea, response}
        else
            error = 'please enter a realistic idea'
            res.render 'error', {idea, error}

app.start()

