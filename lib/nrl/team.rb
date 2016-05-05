module NRL
  # Encapsulates an NRL team.
  #
  # @!attribute id
  #   @return [Integer] a unique team identifier
  # @!attribute full_name
  #   @return [String] the team's full name
  # @!attribute name
  #   @return [String] the team's shortened name
  # @!attribute short_name
  #   @return [String] three-letter abbreviation of the team's name
  # @!attribute games
  #   @return [Integer] the number of games played by the team this season
  # @!attribute win
  #   @return [Integer] the number of games won by the team this season
  # @!attribute loss
  #   @return [Integer] the number of games lost by the team this season
  # @!attribute draw
  #   @return [Integer] the number of games drawn by the team this season
  # @!attribute margin
  #   @return [Integer] the team's points differential
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

    # Get all teams
    #
    # @return [Array<Team>] an array of all teams
    def self.all
      connection.get('ladder.json').body.map { |attrs| Team.new(attrs) }
    end

    # Get all of the team's matches for this season
    #
    # @return [Array<Match>] an array of all of the team's matches this season
    def matches
      Match.all.select do |match|
        match.home_squad_id == id || match.away_squad_id == id
      end
    end
  end
end
