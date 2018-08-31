class LRUCache

  attr_accessor :storage

  def initialize(n)
    @size = n
    @storage = []
  end

  def count
    # returns number of elements currently in cache
    @storage.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @storage.include?(el)
      @storage.delete(el)
      @storage << el
    elsif count == @size
      @storage.shift
      @storage << el
    else
      @storage << el
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @storage
  end

  private
  # helper methods go here!

end
