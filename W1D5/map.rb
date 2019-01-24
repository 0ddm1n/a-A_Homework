
class Map
    def initialize
        @mappy = []
    end

    def set(key, val)
        @mappy << [key, val] unless @mappy.include?(key)
    end

    def get(key)
    end

    def delete(key)
    end

    def show
    end