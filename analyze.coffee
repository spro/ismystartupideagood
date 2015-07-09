store = require './store'

estimate = (idea) -> 2500

analyze = (idea, cb) ->
    respond = -> cb null, 'no'
    store idea, ->
        setTimeout respond, estimate idea

module.exports = analyze
