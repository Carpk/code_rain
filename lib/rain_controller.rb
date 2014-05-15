
class CodeRain

  def initialize
    @view = ViewRain.new
    @data = ModelRain.new
    @bucket = [[[],5,4],[[],3,8],[[],2,16]]
  end

  def run
    rain_speed = 0
    while true
      rain = @view.rain_new
      rain_speed += 1

      @bucket.each do |param|
        rain = rain_fall(rain, param[0], rain_speed, param[1], param[2])
      end

      @view.clear_screen
      @view.grid_rain(rain)
      sleep(0.05)
      rain_speed = 0 if rain_speed >= 30
    end
  end

  def rain_fall(grid, bucket, speed, rs_divisor, gen_ratio)
    bucket << {row: 0, col: rand(0..(grid[0].length)), droplet: @data.create_drop} if rand(1..gen_ratio) == 2

    bucket.each do |drop|
      drop[:droplet].each_with_index do |value, index|
        next unless (0..grid.length-1).include?(drop[:row]-index)
        grid[drop[:row] - index][drop[:col]] = value
      end
      drop[:row] += 1 if speed % rs_divisor == 0
    end
    bucket.delete_if {|obj| obj[:row] > grid.length + obj[:droplet].length}.compact!
    grid
  end

end

=begin
it should choose a column to fall down
each iteration will add that rain drop's position

{slow: [r,x,K]}

 {:row=>3, :col=>8, :age=>4, :drop=>["r", "X", "k"]}

[[drops: [],rs_div: 5,gen_ratio: 4],
 [drops: [],rs_div: 3,gen_ratio: 8],
 [drops: [],rs_div: 2,gen_ratio: 16]]

@slow_drops.map! {|obj| obj = nil if obj[:row] > 60}
next if drop[:row] > grid.length - 1
rand(0..grid.length)
=end