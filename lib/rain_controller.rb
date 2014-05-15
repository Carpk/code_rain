
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
        rain = @data.rain_fall(rain, param[0], rain_speed, param[1], param[2])
      end

      @view.grid_rain(rain)
      sleep(0.05)
      rain_speed = 0 if rain_speed >= 30
    end
  end

  def generate_cloud
    [{speed: "slow", drops: [], speed_div: 5, gen_ratio: 4},
     {speed: "medm", drops: [], speed_div: 3, gen_ratio: 8},
     {speed: "fast", drops: [], speed_div: 2, gen_ratio: 16}]
  end

end
