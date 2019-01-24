require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {[]}
    place_stones
    
  end

  def place_stones
    (0..5).to_a.each do |idx|
      @cups[idx] = [:stone, :stone, :stone, :stone]
    end
    (7..12).to_a.each do |idx|
      @cups[idx] = [:stone, :stone, :stone, :stone]
    end
  end

  def valid_move?(start_pos)
    if start_pos > 13
      raise "Invalid starting cup"
    elsif start_pos == 0
      raise "Starting cup is empty"
    else
      true
    end
  end

  def make_move(start_pos, current_player_name)
    @cups[start_pos] = []
    
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    case @cups[ending_cup_idx]
      when -1
        :switch
      when 1
        :prompt
      else
        ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    if @cups[0..5].all? { |c| c.empty? }
      return true
    elsif @cups[7..12].all? { |c| c.empty? }
      return true
    end
    return false
  end
 

  def winner

  end
end

