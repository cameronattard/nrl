module NRL
  # Encapsulates an NRL match.
  #
  # @!attribute id
  #   @return [Integer] a unique match identifier
  # @!attribute round
  #   @return [Integer] the id of the match's round
  # @!attribute match
  #   @return [Integer] the match's id
  # @!attribute home_squad_id
  #   @return [Integer] the home team's id
  # @!attribute home_squad_odds
  #   @return [Float] the home team's wagering odds
  # @!attribute away_squad_id
  #   @return [Integer] the away team's id
  # @!attribute away_squad_odds
  #   @return [Float] the away team's wagering odds
  # @!attribute venue_id
  #   @return [Integer] unique identifier for the match's host venue
  # @!attribute status
  #   @return [String] the match's status
  # @!attribute date
  #   @return [DateTime] the scheduled match date
  # @!attribute is_first
  #   @return [Boolean] true if the match is scheduled first in its round
  # @!attribute is_last
  #   @return [Boolean] true if the match is scheduled last in its round
  # @!attribute is_match_day
  #   @return [Boolean] true if the match is scheduled for today
  # @!attribute is_margin_game
  #   @return [Boolean] TODO: write documentation
  # @!attribute hashtag
  #   @return [String] the match's promotional hashtag
  # @!attribute venue_name
  #   @return [String] the name of the match's host venue
  # @!attribute home_squad_name
  #   @return [String] the home team's name
  # @!attribute away_squad_name
  #   @return [String] the away team's name
  # @!attribute home_score
  #   @return [Integer] the home team's score
  # @!attribute away_score
  #   @return [Integer] the away team's score
  class Match < Base
    include Virtus.model

    attribute :id, Integer
    attribute :round, Integer
    attribute :match, Integer
    attribute :home_squad_id, Integer
    attribute :home_squad_odds, Float
    attribute :home_squad_odds_id, Integer
    attribute :away_squad_id, Integer
    attribute :away_squad_odds, Float
    attribute :away_squad_odds_id, Integer
    attribute :venue_id, Integer
    attribute :status, String
    attribute :date, DateTime
    attribute :is_first, Boolean
    attribute :is_last, Boolean
    attribute :is_match_day, Boolean
    attribute :is_margin_game, Boolean
    attribute :hashtag, String
    attribute :venue_name, String
    attribute :home_squad_name, String
    attribute :away_squad_name, String
    attribute :home_score, Integer
    attribute :away_score, Integer

    # Get all season matches
    #
    # @return [Array<Match>] an array of all matches
    def self.all
      Round.all.map(&:matches).flatten
    end

    # Format the match into an array for Round table insertion
    #
    # @return [Array<String>] an array containing match details
    def round_row
      [
        "($#{home_squad_odds}) #{home_squad_name} ",
        status == 'scheduled' ? '' : "#{home_score} - #{away_score}",
        "#{away_squad_name} ($#{away_squad_odds})",
        venue_name,
        date.strftime('%d/%m/%Y %I:%M%p')
      ]
    end
  end
end
