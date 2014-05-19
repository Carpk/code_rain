class ViewRain

  def clear_screen
    print "\e[2J"
    # print "\e[H"
  end

  def grid_rain(grid)
    clear_screen
    grid.each do |row|
      puts row.join
    end
  end


  def rain_new(size = 35)
    Array.new(size) { Array.new(size * 4," ") }
  end
end
