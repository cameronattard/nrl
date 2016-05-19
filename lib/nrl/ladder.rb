module NRL
  # Represents the current state of the competition ladder
  class Ladder
    # Construct an ASCII table of the competition ladder
    #
    # @return [Terminal::Table] an ASCII table of the competition ladder
    def table
      headings = %w(Team Games Won Lost Draw Points PD)
      rows = Team.all.map(&:ladder_row).insert(8, :separator)
      Terminal::Table.new(headings: headings, rows: rows)
    end
  end
end
