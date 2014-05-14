
class CodeRain

  def initialize
    @view = ViewRain.new
    @data = ModelRain.new
    @slow_drops = []
  end

  def run
    rain_speed = 0
    while true
      rain = @view.rain_new
      rain_speed += 1

      rain = slow_rain(rain) #if rain_speed % 2 == 0
      # med_rain(rain) if rain_speed % 3 == 0
      # fast_rain(rain) if rain_speed % 2 == 0
      @view.clear_screen
      @view.grid_rain(rain)
      sleep(0.10)
      rain_speed = 0 if rain_speed >= 30
    end
  end

  def slow_rain(grid)
    @slow_drops << {row: 0, col: rand(0..(grid.length * 2)), droplet: @data.rain_drop} if rand(1..3) == 2

    @slow_drops.each do |drop|
      drop[:droplet].each_with_index do |value, index|
        grid[drop[:row] - index][drop[:col]] = value
      end
      drop[:row] += 1
    end
    puts @slow_drops.length
    @slow_drops.delete_if {|obj| obj[:row] > 30}

    @slow_drops.compact!
    puts @slow_drops.length
    grid
  end

  def med_rain(grid)

  end

  def fast_rain(grid)

  end

  # def sample
  #   @rain = @view.rain
  #   while true
  #     @rain = @data.set_downfall(@rain)
  #     @view.clear_screen
  #     @view.grid_rain(@rain)
  #     sleep(0.10)
  #   end
  # end
end

=begin
it should choose a column to fall down
each iteration will add that rain drop's position

{slow: [r,x,K]}

 {:row=>3, :col=>8, :age=>4, :drop=>["r", "X", "k"]}

rand(0..grid.length)
=end