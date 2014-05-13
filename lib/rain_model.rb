class ModelRain


  def set_downfall(rain)
    top_fall = rain.pop
    rain.unshift(top_fall)
  end

  def raindrop
    Array.new(rand(3..8))
  end
end