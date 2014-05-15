class ViewRain

  def clear_screen
    print "\e[2J"
    # print "\e[H"
  end

  def grid_rain(grid)
    clear_screen
    grid.each_index do |index|
      puts "#{grid[index].join}"
      # puts "#{grid[index].map{|rand| rand = rand(49..122).chr if rand == "_"}.join}"
    end
  end


  def rain_new(size = 20)
    Array.new(size) { Array.new(size * 4," ") }
  end
end
=begin

string = grid[index].join
string.gsub

=end