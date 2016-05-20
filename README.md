# NRL

[![Build Status](https://travis-ci.org/cameronattard/nrl.svg?branch=master)](https://travis-ci.org/cameronattard/nrl)
[![Code Climate](https://codeclimate.com/github/cameronattard/nrl/badges/gpa.svg)](https://codeclimate.com/github/cameronattard/nrl)

A Ruby wrapper library for the NRL API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nrl'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nrl

## CLI Usage

```ruby
$ nrl
Commands:
  nrl help [COMMAND]      # Describe available commands or one specific command
  nrl ladder              # Display the current competition ladder
  nrl round [ROUND_NUMBER]  # Display a competition round

$ nrl ladder
+------------+-------+-----+------+------+--------+------+
| Team       | Games | Won | Lost | Draw | Points | PD   |
+------------+-------+-----+------+------+--------+------+
| Broncos    | 11    | 8   | 3    | 0    | 16     | 158  |
| Cowboys    | 11    | 8   | 3    | 0    | 16     | 140  |
| Sharks     | 10    | 8   | 2    | 0    | 16     | 123  |
| Storm      | 10    | 8   | 2    | 0    | 16     | 99   |
| Bulldogs   | 10    | 6   | 4    | 0    | 12     | 53   |
| Eels       | 10    | 6   | 4    | 0    | 12     | 43   |
| Panthers   | 10    | 5   | 5    | 0    | 10     | 1    |
| Rabbitohs  | 11    | 5   | 6    | 0    | 10     | -5   |
+------------+-------+-----+------+------+--------+------+
| Dragons    | 11    | 5   | 6    | 0    | 10     | -103 |
| Raiders    | 10    | 4   | 5    | 1    | 9      | 14   |
| Titans     | 10    | 4   | 6    | 0    | 8      | -21  |
| Sea Eagles | 10    | 4   | 6    | 0    | 8      | -48  |
| Warriors   | 10    | 4   | 6    | 0    | 8      | -54  |
| Tigers     | 10    | 3   | 7    | 0    | 6      | -87  |
| Roosters   | 10    | 2   | 8    | 0    | 4      | -60  |
| Knights    | 10    | 1   | 8    | 1    | 3      | -253 |
+------------+-------+-----+------+------+--------+------+

$ nrl round
+-------------------+---------+--------------------+-----------------------------+--------------------+
| Home              | Score   | Away               | Venue                       | Kickoff            |
+-------------------+---------+--------------------+-----------------------------+--------------------+
| ($0.0) Rabbitohs  | 34 - 24 | Dragons ($0.0)     | ANZ Stadium                 | 19/05/2016 07:50PM |
| ($0.0) Cowboys    | 19 - 18 | Broncos ($0.0)     | 1300SMILES                  | 20/05/2016 07:50PM |
| ($1.3) Tigers     |         | Knights ($3.7)     | Campbelltown Sports Stadium | 21/05/2016 03:00PM |
| ($1.83) Warriors  |         | Raiders ($2.0)     | Yarrow Stadium              | 21/05/2016 05:30PM |
| ($1.29) Sharks    |         | Sea Eagles ($3.75) | Remondis Stadium            | 21/05/2016 07:30PM |
| ($1.27) Panthers  |         | Titans ($3.9)      | Pepper Stadium              | 22/05/2016 02:00PM |
| ($1.67) Bulldogs  |         | Roosters ($2.25)   | ANZ Stadium                 | 22/05/2016 04:00PM |
| ($1.8) Eels       |         | Storm ($2.05)      | Pirtek Stadium              | 23/05/2016 07:00PM |
+-------------------+---------+--------------------+-----------------------------+--------------------+
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cameronattard/nrl.

