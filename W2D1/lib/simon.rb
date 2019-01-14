class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    while @game_over == false
      self.take_turn
    end
    if @game_over == true
      self.game_over_message
      self.reset_game
    end
  end

  def take_turn
    self.show_sequence
    self.require_sequence

    if @game_over == false
      self.round_success_message
      @sequence_length += 1
    end
    self.add_random_color
  end

  def show_sequence
    self.add_random_color
    self
  end

  def require_sequence
    puts "Enter the sequence by inputting the first letter of each color capitalized."
   
    @seq.each do |color|
      user_guess = gets.chomp
      if color[0] != user_guess
        @game_over = true
        break
      end
    end

  end

  def add_random_color
    rand_color = COLORS.sample
    @seq << rand_color
  end

  def round_success_message
    puts "Congrats! Onto the next round..."
  end

  def game_over_message
    puts "Game Over! Try Again!"
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end
