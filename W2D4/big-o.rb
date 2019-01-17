def sluggish(array)
    results = nil
    array.each do |el1|
        array.each do |el2|
            if el1 > el2
                results = el1
            else
                results = el2
            end
        end
    end
    results     
end

def dominant(array)
    return array if array.length <= 1
    swapped = true

    while swapped do
        swapped = false
        0.upto(array.length - 2).each do |idx|
            if array[idx] > array[idx + 1]
                array[idx], array[idx + 1] = array[idx + 1], array[idx]
                swapped = true
            end
        end
    end
    array
end

def clever(array)
    results = ''
    array.each do |el|
        results = el if results.length < el.length
    end
    results
end

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ] 

def slow_dance(dir, array)
    array.each.with_index do |el, idx|
        return idx if dir == el
    end
end

TILES = {
    'up' => 0,
    "right-up" => 1,
    "right" => 2, 
    "right-down" => 3, 
    "down" => 4, 
    "left-down" => 5, 
    "left" => 6, 
    "left-up" => 7
}
def constant_dance(dir, array)
    TILES[dir]
end