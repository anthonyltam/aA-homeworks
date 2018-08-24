class Map

  def initialize(array=[])
    @map = array
  end

  def set(key, value)
    pair_index = @map.index { |tuple| tuple[0] == key }

    if pair_index
      @map[pair_index][1] = value
    else
      @map << [key, value]
    end
    @map
  end

  def get(key)
    @map.select { |tuple| tuple if tuple[0] == key }.last.last
  end

  def delete(key)
    @map.reject { |tuple| tuple if tuple[0] == key }
  end

  def show
    @map
    # deep_dup(@map)
  end

  private

  def deep_dup(arr)
    arr.map {|tuple| tuple.is_a?(Array) ? deep_dup(tuple) : tuple }
  end

end



#
