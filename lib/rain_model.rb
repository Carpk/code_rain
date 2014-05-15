class ModelRain

  def initialize
    @slow_drops = []
    @med_drops = []
    @fast_drops = []
  end



  def create_drop
    # drop = Array.new(rand(5..13))
    drop = Array.new(rand(5..13)).map! {|droplet| droplet = rand(49..122).chr}
    # {row: 0, col: rand(0..(grid[0].length)), droplet: drop}
  end
end