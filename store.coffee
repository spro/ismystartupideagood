async = require 'async'
Redis = require 'redis'
redis = Redis.createClient()

time = -> new Date().getTime()

store = (idea, cb) ->
    t = time()
    stored = JSON.stringify {idea, t}
    async.parallel [
        (cb) -> redis.lpush 'ideas', stored, cb
        (cb) -> redis.publish 'ideas', stored, cb
    ], cb

module.exports = store
