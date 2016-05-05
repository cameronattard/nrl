module NRL
  # Encapsulates an NRL season round.
  #
  # @!attribute id
  #   @return [Integer] a unique round identifier
  # @!attribute status
  #   @return [String] the status of the round
  # @!attribute start
  #   @return [DateTime] the round's start time
  # @!attribute end
  #   @return [DateTime] the round's end time
  # @!attribute bye_squads
  #   @return [Array<Integer>] the ids of teams with a bye in the round
  # @!attribute is_final
  #   @return [Boolean] true if the round is a finals round, false if not
  # @!attribute lifted_at
  #   @return [Integer] TODO: finish documentation
  # @!attribute matches
  #   @return [Array<Match>] the matches in the round
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

    # Get all season rounds
    #
    # @return [Array<Team>] an array of all rounds
    def self.all
      connection.get('rounds.json').body.map { |attrs| Round.new(attrs) }
    end

    # Find a round by its id
    #
    # @return [Round] a round matching the provided id
    def self.find(id)
      all.detect { |round| round.id == id }
    end
  end
end
