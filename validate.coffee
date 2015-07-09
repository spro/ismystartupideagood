MIN_LENGTH = 30

validate = (idea, cb) ->
    err = null
    if idea.length < MIN_LENGTH
        err = 'please enter a full idea description'
    cb err, !err?

module.exports = validate
