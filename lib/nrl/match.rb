module NRL
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

    def self.all
      Round.all.map { |round| round.matches }.flatten
    end
  end
end