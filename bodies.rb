class Body
  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  def mass
    @mass
  end

end

class Planet < Body
  def initialize(name, mass, hours, days)
    super(name, mass)
    @day = hours
    @year = days

  end

end

class Star < Body
  def initialize(name, mass, type)
    super(name,mass)
    @type = type

  end


end

class Moon < Body
  def initialize(name, mass, days, planet)
    super(name, mass)
    @month = days
    @planet = planet

  end

end
