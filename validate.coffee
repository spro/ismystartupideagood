MIN_LENGTH = 30

validate = (idea, cb) ->
    valid = true
    if idea.length < MIN_LENGTH
        valid = false
    cb null, valid

module.exports = validate
