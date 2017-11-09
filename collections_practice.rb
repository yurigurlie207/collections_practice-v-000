def sort_array_asc(intArray)
  intArray.sort
end

def sort_array_desc(intArray)
  intArray.sort.reverse
end

def sort_array_char_count(strArray)
  strArray.sort do |a,b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  temp = array[1]
  array[1] = array[2]
  array[2] = temp
  return array
end

def swap_elements_from_to(array, index, destination_index)
  temp = array[index]
  array[index] = array[destination_index]
  array[destination_index] = temp
  return array
end

def reverse_array(intArray)
  intArray.reverse
end


def kesha_maker(strArray)
  newArray = []
  strArray.each do |string|
    tempArray = string.split("")
    tempArray[2] = "$"
    newArray << tempArray.join("")
  end
  return newArray
end

def find_a(strArray)
  newArray = []
  strArray.each do |string|
    tempArray = string.split("")
    newArray << tempArray.join("") if tempArray.first == "a"
  end
  return newArray
end

def sum_array(intArray)
  sum = 0
  intArray.each do |number|
    sum = sum + number
  end

  return sum
end

def add_s(strArray)
  # newArray = []
  # strArray.each do |string|
  #   if string != "feet" then
  #     tempArray = string.split('')
  #     tempArray << "s"
  #     string = tempArray.join('')
  #   end
  #     newArray << string
  # end
  # return newArray

  strArray.each_with_index.collect { |element, index|
    if element != "feet" then
          tempArray = element.split('')
          tempArray << "s"
          element = tempArray.join
    end
    strArray[index]= element
}
end
