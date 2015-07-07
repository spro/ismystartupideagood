estimate = (idea) -> 2500

analyze = (idea, cb) ->
    respond = -> cb null, 'no'
    setTimeout respond, estimate idea

module.exports = analyze
