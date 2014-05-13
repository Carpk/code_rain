
class CodeRain

  def initialize
    @view = ViewRain.new
    @data = ModelRain.new
  end

  def run_two
    @rain = @view.rain_new
    while true

      sleep(0.25)
    end
  end

  def run
    @rain = @view.rain
    while true
      @view.clear_screen
      @rain = @data.set_downfall(@rain)
      @view.grid_rain(@rain)
      sleep(0.25)
    end
  end
end

=begin
it should choose a column to fall down
each iteration will add that rain drop's position

=end