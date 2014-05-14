
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

      rain = slow_rain(rain, rain_speed)
      # med_rain(rain) if rain_speed % 3 == 0
      # fast_rain(rain) if rain_speed % 2 == 0
      @view.clear_screen
      @view.grid_rain(rain)
      sleep(0.10)
      rain_speed = 0 if rain_speed >= 30
    end
  end

  def slow_rain(grid, speed)
    @slow_drops << {row: 0, col: rand(0..(grid[0].length)), droplet: @data.create_drop} if rand(1..3) == 2

    @slow_drops.each do |drop|
      drop[:droplet].each_with_index do |value, index|
        next unless (0..grid.length-1).include?(drop[:row]-index)
        grid[drop[:row] - index][drop[:col]] = value
      end
      drop[:row] += 1 if speed % 2 == 0
    end
    @slow_drops.delete_if {|obj| obj[:row] > grid.length + obj[:droplet].length}.compact!
    grid
  end

  def med_rain(grid)

  end

  def fast_rain(grid)

  end

end

=begin
it should choose a column to fall down
each iteration will add that rain drop's position

{slow: [r,x,K]}

 {:row=>3, :col=>8, :age=>4, :drop=>["r", "X", "k"]}

@slow_drops.map! {|obj| obj = nil if obj[:row] > 60}
next if drop[:row] > grid.length - 1
rand(0..grid.length)
=end