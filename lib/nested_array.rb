# A class that implements the behavior of a nested array
class NestedArray
  def initialize(array)
    @array = array
  end

  def flatten
    return unless @array
    return [] if @array.empty?

    @array.each_with_object([]) do |item, flat_array|
      flat_array.concat flatten_item(item)
    end
  end

  private

  def flatten_item(item)
    item.is_a?(Array) ? NestedArray.new(item).flatten : [item]
  end
end
