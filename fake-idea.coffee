randomChoice = (l) -> l[Math.floor l.length*Math.random()]
r = randomChoice

# Shoutout to eastbayjake https://github.com/eastbayjake/Startup-Pitch-Robot

companies = ["Facebook", "FarmVille", "Reddit", "Twitter", "Yelp", "Instagram", "Fandango", "eBay", "Amazon", "Spotify", "Tumblr", "Netflix", "Wordpress", "Pinterest", "Groupon", "Flickr", "LiveJournal", "Hot Or Not", "Kickstarter", "Pets.com", "Angry Birds", "Foursquare", "StubHub", "GitHub", "MySpace", "SoundCloud", "Pitchfork", "Buzzfeed", "Wikipedia", "LinkedIn", "Chatroulette", "Google Reader", "OKCupid", "Craigslist", "Coursera", "Grindr", "HackerNews", "Epicurious", "StumbleUpon"]
customers = ["Justin Bieber fans", "cougars", "hipsters", "yoga", "single dads", "musicians", "dogs", "clowns", "street performers", "hookups", "stoners", "meetups", "web developers", "overachievers", "cops", "tiger moms", "soccer moms", "Millennials", "urban professionals", "Baby Boomers", "Republicans", "preppies", "flashmobs", "DJs", "veterans", "the elderly", "progressives", "college students", "newlyweds", "tweens", "vinyl snobs", "investment bankers", "evangelicals", "freelance writers", "movie lovers", "foodies", "eccentric billionaires", "CEOs", "trees"]
fundings = ["in Series A funding", "in angel funding", "in seed funding", "from our Harclassmates", "from Larry Ellison's couch cushions", "from Carl Icahn", "from Michael Dell", "from Kickstarter", "from our IPO", "from the Chinese government", "from a Saudi prince"]
adjectives = ["social", "mobile", "monetization", "advertising", "collaborative", "interactive", "innovative", "patented", "open-source", "realtime", "big data", "cool new", "amazing", "unprecedented", "totally new", "redesigned", "killer", "incredible", "premium"]
impacts = ["revolutionize", "disrupt", "create competition for", "shock", "make a bunch of millionaires in", "forever change", "fundamentally alter", "produce creative destruction in", "cause waves in", "create quite a stir in", "drive investment in", "lead to a rebirth in", "revitalize", "improve", "dominate", "be the messiah of"]
groups = ["the tech industry", "Silicon Valley", "Palo Alto", "the Google campus", "the NASDAQ", "the startup scene", "the Austin tech scene", "the New York tech scene", "the American economy", "the Internet", "the TechCrunch comment section", "the way we use computers"]

fakeIdea = ->
    "#{r impacts} #{r groups} with #{r companies} for #{r customers}"

module.exports = fakeIdea
