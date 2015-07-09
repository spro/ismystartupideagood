MIN_LENGTH = 4
MIN_WORDS = 3
MAX_WORDS = 20

validate = (idea, cb) ->
    err = null
    if idea.length < MIN_LENGTH
        err = 'please enter a full idea description'
    else if idea.split(' ').length < MIN_WORDS
        err = 'please put more effort into describing your idea'
    else if idea.split(' ').length > MAX_WORDS
        err = 'woah there we need to be able to read these quickly'
    cb err, !err?

module.exports = validate
