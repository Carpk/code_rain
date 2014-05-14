
class CodeRain

  def initialize
    @view = ViewRain.new
    @data = ModelRain.new
  end

  def run_two
    rain_speed = 0
    while true
      rain = @rain_new
      rain_speed += 1

      fast_rain if rain_speed % 2 == 0
      med_rain if rain_speed % 3 == 0
      slow_rain if rain_speed % 5 == 0

      @view.grid_rain(rain)
      sleep(0.10)
      rain_speed = 0 if rain_speed >= 30
    end
  end

  def fast_rain

  end

  def med_rain

  end

  def slow_rain

  end

  def run
    @rain = @view.rain
    while true
      @rain = @data.set_downfall(@rain)
      @view.clear_screen
      @view.grid_rain(@rain)
      sleep(0.10)
    end
  end
end

=begin
it should choose a column to fall down
each iteration will add that rain drop's position






=end