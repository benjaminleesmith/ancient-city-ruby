# Unofficial 2013 Ancient City Ruby Conf Gem!

## Installation

Run:

    $ gem install aloha-ruby-conf

or add this line to your application's Gemfile:

    gem 'aloha-ruby-conf'

and then execute:

    $ bundle

## Usage

    > require 'ancient-city-ruby'

    > AncientCityRuby::Schedule.print

    Thursday, April 4, 2013
    +-------------+------------------------------------------------+-----------------+
    |  8:00-9:00  |                    Breakfast and Registration                    |
    +-------------+------------------------------------------------+-----------------+
    |  9:00-9:45  |       Insight, Intuition and Programming       |   Russ Olsen    |
    +-------------+------------------------------------------------+-----------------+
    | 9:45-10:00  |                Lightning Talks                 |       TBA       |
    +-------------+------------------------------------------------+-----------------+
    ...

    > AncientCityRuby::Drinkups.print

    Thursday, April 4, 2013
    +----------+---------------------------------------------+---------------------+
    | OPTION 1 | Satellite Black Raven Pirate Ship Adventure |        Full         |
    +----------+---------------------------------------------+---------------------+
    | OPTION 2 |  Onlife Health Creepy Pub Crawl (ages 21+)  | tinyurl.com/brafw8g |
    +----------+---------------------------------------------+---------------------+

    > AncientCityRuby::DrawingEntry.create!("foo1@example.com")

    => "You have a 100% chance to win a $50 Pivotal Tracker gift card!"

    ![gift card picture](http://pivotal-tracker-drawing.herokuapp.com/assets/tracker-gift-card.jpg)