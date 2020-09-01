module TowerBuilder
  def self.build(n_floors)
    stars = 1
    arr = []

    n_floors.times do
      arr << ('*' * stars)
      stars += 2
    end

    arr.map { |floor| floor.center(arr.last.chars.count) }
  end
end
