# A class that implements the behavior of a nested array
class NestedArray
  def initialize(array)
    @array = array
  end

  def flatten
    return @array if @array.nil? || @array.empty?

    @array.each_with_object([]) do |item, flat_array|
      flat_array.concat flatten_item(item)
    end
  rescue NoMethodError
    puts 'Please Make sure to provide an array as an input to the class!'
  end

  private

  def flatten_item(item)
    item.is_a?(Array) ? NestedArray.new(item).flatten : [item]
  end
end
