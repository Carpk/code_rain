class ModelRain


  def set_downfall(rain)
    top_fall = rain.pop
    rain.unshift(top_fall)
  end

  def rain_drop
    drop = Array.new(rand(5..13))
    drop.map! {|droplet| droplet = rand(49..122).chr}
  end
end