module NRL
  class Round < Base
    include Virtus.model

    attribute :id, Integer
    attribute :status, String
    attribute :start, DateTime
    attribute :end, DateTime
    attribute :bye_squads, Array[Integer]
    attribute :is_final, Boolean
    attribute :lifted_at, Integer
    attribute :matches, Array[Match]

    def self.all
      connection.get('rounds.json').body.map { |attrs| Round.new(attrs) }
    end
  end
end