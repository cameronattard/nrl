module NRL
  class Team < Base
    include Virtus.model

    attribute :id, Integer
    attribute :full_name, String
    attribute :name, String
    attribute :short_name, String
    attribute :games, Integer
    attribute :win, Integer
    attribute :loss, Integer
    attribute :draw, Integer
    attribute :points, Integer
    attribute :margin, Integer

    def self.all
      connection.get('ladder.json').body.map { |attrs| Team.new(attrs) }
    end
  end
end