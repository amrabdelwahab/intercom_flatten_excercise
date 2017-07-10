# A class that implements the behavior of a nested array
class NestedArray
  def initialize(array)
    @array = array
  end

  def flatten
    return [] if @array.empty?
    flat_array = []
    @array.each do |item|
      if item.is_a? Array
        flat_array
      else
        flat_array << item
      end
    end

    flat_array
  end
end
