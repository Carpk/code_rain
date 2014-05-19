
class CodeRain

  def initialize
    @view = ViewRain.new
    @data = ModelRain.new
  end

  def run
    rain_speed = 0
    while true
      rain = @view.rain_new
      rain_speed += 1

      rain = @data.make_it_rain(rain, rain_speed)

      @view.grid_rain(rain)
      sleep(0.05)
      rain_speed = 0 if rain_speed >= 30
    end
  end

end
