require 'minitest/autorun'

class Grid
  def initialize(n)
    source = ('A'..'Z').to_a
    @grid = []
    n.times do |row|
      @grid[row] = n.times.collect { source.sample }
    end
  end

  def print_grid_rows
    @grid.each do |row|
      print "\n#{row}"
    end
    print "\n\n\n\n"
  end

  def print_grid_columns
    columns.each do |column|
      print "\n#{column}"
    end
    print "\n\n\n\n"
  end

  def print_grid_diagonals
    diagonals.each do |diagonal|
      print "\n#{diagonal}"
    end
    print "\n\n\n\n"
  end

  def searc_dictionary_in_grid('dic.txt') 
    # TODO
  end

  private

  def columns
    columns = []
    0.upto(@grid.size - 1) do |index|
      columns << @grid.each.collect {|row| row[index]} 
    end
    columns
  end

  def diagonals_left_right
    diagonals = []
    (@grid.size - 1 ).downto(0) do |diagona_row|
      diagonals << 0.upto(diagona_row).collect {|index| @grid[index][diagona_row - index] }.reverse 
    end
    # TODO: get the othe halt of diagonals 
    diagonals.reverse
  end
  
  def diagonals_right_left
    # TODO
  end

  def find_horizontal_left_righ(search_item)
    @grid.each { |row| return true if row.include?(search_item) }
    return false
  end

  def find_horizontal_righ_left(search_item)
    @grid.each { |row| return true if row.reverse.include?(search_item) }
    return false
  end

  def find_vertical_up_down(search_item)
    columns.each { |column| return true if column.include?(search_item) }
    return false
  end

  def find_vertical_down_up(search_item)
    columns.each { |column| return true if column.reverse.include?(search_item) }
    return false
  end

  def find_diagonal_left_right(search_item)
    # TODO
  end

  def find_diagonal_right_left(search_item)
    # TODO
  end
end



# # TODO: write minitest for 
# => Horizontal words from left to right in your grid
# => Horizontal words from right to left in your grid
# => Vertical words from top to bottom in your grid
# => Vertical words from bottom to top in your grid
# => Diagonal words from left to right in your grid
# => Diagonal words from right to left in your grid

