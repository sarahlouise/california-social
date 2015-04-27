# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Supperclub.create{[
	{ name: "Wolvesmouth", location: 'Los Angeles', about: "It’s not a restaurant. It's a dinner party. It’s the intersection between food, music and art. It’s an exploration in social dynamics. It’s friends, old and new. It’s fleeting and always changing. No menus. No dress code. No pretence. It’s dining in its most raw form: people, food, and open minds…", exclusivity: 3, email: "dimsumpup@wolvesmouth.com", website:'http://www.wolvesmouth.com' }, 
	{ name: "Chicks With Knives", location: 'Los Angeles', about: "Rachael Narins & Suzanne Griwold. Chicks, with knives.", exclusivity: 3, website:"http://www.chickswithknives.com" }, 
	{ name: "BRK", location: "West Hollywood", about: "Max and Max -- the Chef and Sommelier, respectively -- serve a TEN-TO-TWELVE-COURSE, fine dining-experience-style dinner with 'food and service that are Michelin star-serious', with 'substitutions impolitely declined'. In other words: this is serious food.", exclusivity: 3, website:'http://brkdining.com'}, 
	{name: "Truffl", location: 'Los Angeles', about: "For the last year-plus, Truffl -- which bills itself as an exclusive social club without a clubhouse -- has been hosting enviable food-forward events, like an omakase ceviche dinner with music from an El Rey-headlining band, in a architecture studio Downtown, and a how-to-make-a-perfect-burger party with the founder of Umami.", exclusivity: 3, website:'http://www.truffl.com'}, 
	{name: 'Kali Dining', location: 'Los Angeles', about: "Every dish that Chef Kevin Meehan sends out at these intimate dinners looks straight out of an episode of Top Chef, and you never know what you're going to get.", exclusivity: 3, website: "http://www.kalidining.com"}
	]}