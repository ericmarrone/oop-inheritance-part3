require_relative "bodies"
class System

  def initialize
    @bodies = []

  end


  def add(body)
    @bodies << body
  end

  def bodies
    @bodies
  end

  def total_mass
    sum = 0
    bodies.each do |body|
      sum += body.mass
    end
    return sum
  end

end


milky_way = System.new

sun = Star.new("sun", 20, "g-type")
earth = Planet.new("earth", 30, 24, 365)
moon = Moon.new("moon", 10, 30, earth)
puts moon.inspect



milky_way.add(sun)
milky_way.add(earth)
milky_way.add(moon)

puts milky_way.bodies.inspect
puts milky_way.total_mass
