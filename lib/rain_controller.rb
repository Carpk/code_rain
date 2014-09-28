
class CodeRain

  def initialize
    @view = ViewRain.new
    @data = ModelRain.new
  end

  def run
    rain_speed = 0
    while true
      rain_speed += 1
      @view.grid_rain(@data.make_it_rain(@view.rain_new, rain_speed))
      sleep(0.05)
      rain_speed = 0 if rain_speed >= 30
    end
  end

end
