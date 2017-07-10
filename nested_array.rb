# A class that implements the behavior of a nested array
class NestedArray
  def initialize(array)
    @array = array
  end

  def flatten
    return [] if @array.empty?
    @array
  end
end
