class ModelRain

  def initialize
    @slow_drops = []
  end

  def set_downfall(rain)
    top_fall = rain.pop
    rain.unshift(top_fall)
  end

  def create_drop
    drop = Array.new(rand(5..13))
    drop.map! {|droplet| droplet = rand(49..122).chr}
  end
end