class Shapre
  def area
    raise(NotImplementedError, 'Subclasses must implement the `area` method')
  end
end

class Circle < Shape
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius ** 2
  end
end

class Rectangle < Shape
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    @width * @height
  end
end

