class ModelRain

  def initialize

  end

  def rain_fall(grid, bucket, speed, rs_divisor, gen_ratio)
    bucket << create_drop(grid[0].length) if rand(1..gen_ratio) == 2

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

  def create_drop(col_pos)
    {row: 0, col: rand(0..(col_pos)), droplet: Array.new(rand(5..12)).map! {|droplet| droplet = rand(49..122).chr}}
  end
end