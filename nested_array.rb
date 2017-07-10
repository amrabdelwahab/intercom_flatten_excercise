# A class that implements the behavior of a nested array
class NestedArray
  def initialize(array)
    @array = array
  end

  def flatten
    return [] if @array.empty?
    flat_array = []
    @array.each do |item|
      flat_array += flatten_item(item)
    end

    flat_array
  end

  private

  def flatten_item(item)
    item.is_a?(Array) ? NestedArray.new(item).flatten : [item]
  end
end
