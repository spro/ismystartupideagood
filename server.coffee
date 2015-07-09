polar = require 'polar'
analyze = require './analyze'
validate = require './validate'

app = polar.setup_app
    port: 8287

randomChoice = (l) -> l[Math.floor l.length*Math.random()]

fake_ideas = [
    'an airbnb for greeting cards'
    'creating a global opportunity market for high level demand acquisition'
]

app.get '/', (req, res) ->
    fake_idea = randomChoice fake_ideas
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

