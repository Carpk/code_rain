class ViewRain

  def clear_screen
    print "\e[2J"
    # print "\e[H"
  end

  def grid_rain(grid)
    puts "-----------------------------------------------"
    grid.each_index do |index|
      puts "#{grid[index].join}"
    end
  end

  def rain
    [
      ["   ","   ","   ","   ","   ","   ","   "," r ","   ","   ","   ","   ","   ","   ","   ","   "," # ","   ","   ","   "],
      ["   "," 3 ","   ","   ","   ","   ","   "," r ","   ","   ","   ","   ","   ","   ","   ","   "," # ","   ","   ","   "],
      ["   "," 3 ","   ","   ","   ","   ","   "," r ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "],
      ["   "," 3 ","   ","   ","   ","   ","   "," r ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "],
      ["   "," 3 ","   ","   ","   ","   ","   "," r ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "],
      ["   "," 3 ","   ","   ","   ","   ","   "," r ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "," z "],
      ["   "," 3 ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "," z "],
      ["   "," 3 ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "," z "],
      ["   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "," e ","   ","   ","   ","   ","   ","   "," z "],
      ["   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "," e ","   ","   ","   ","   ","   ","   "," z "],
      ["   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "," e ","   ","   ","   ","   ","   ","   "," z "],
      ["   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "," e ","   ","   ","   ","   ","   ","   ","   "],
      ["   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   ","   "," e ","   ","   ","   ","   ","   ","   ","   "],
      ["   ","   ","   ","   ","   ","   ","   ","   "," i ","   ","   ","   "," e ","   ","   ","   ","   ","   ","   ","   "],
      ["   ","   ","   ","   ","   ","   ","   ","   "," i ","   ","   ","   "," e ","   ","   "," y ","   ","   ","   ","   "],
      ["   ","   ","   ","   "," x ","   ","   ","   "," i ","   ","   ","   "," e ","   ","   "," y ","   ","   ","   ","   "],
      ["   ","   ","   ","   "," x ","   ","   ","   "," i ","   ","   ","   "," e ","   ","   "," y ","   ","   ","   ","   "],
      ["   ","   ","   ","   "," x ","   ","   ","   "," i ","   ","   ","   ","   ","   ","   "," y ","   ","   ","   ","   "],
      ["   ","   ","   ","   ","   ","   ","   ","   "," i ","   ","   ","   ","   ","   ","   ","   "," # ","   ","   ","   "],
      ["   ","   ","   ","   ","   ","   ","   ","   "," i ","   ","   ","   ","   ","   ","   ","   "," # ","   ","   ","   "]
    ]
  end

  def rain_new(size = 30)
    Array.new(size) { Array.new(size * 2," ") }
  end
end