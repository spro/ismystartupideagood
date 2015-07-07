polar = require 'polar'
analyze = require './analyze'

app = polar.setup_app
    port: 8287

app.get '/', (req, res) ->
    res.render 'index'

app.post '/', (req, res) ->
    idea = req.body.idea
    analyze idea, (err, response) ->
        res.render 'response', {response}

app.start()

