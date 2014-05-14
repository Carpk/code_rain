class ViewRain

  def clear_screen
    print "\e[2J"
    # print "\e[H"
  end

  def grid_rain(grid)
    grid.each_index do |index|
      puts "#{grid[index].join}"
    end
  end


  def rain_new(size = 30)
    Array.new(size) { Array.new(size * 3," ") }
  end
end