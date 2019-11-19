def add(*num)
  sum = 0
  num.each do |num|
    sum = sum + num
  end
  sum
end

def substract(a,*num)
  sum = a
  num.each do |num|
    sum = sum - num
  end
  sum
end
# stat=:add
  # status = Hash[
  #   add:false,
  #   substract:false
  # ]
def calculate (stat = Hash{add:true},*num)
  sum = 0
  stat.each_key do |key|
    if (key == :add)
      sum = add(*num)
    else
      first, *list = num
      sum = substract(first,*list)
    end
  end
  return sum
end
has = Hash[substract:true]
puts calculate(has,4,5)
#
# def ayam(*b,a:add)
#   puts "#{b.class} #{a.class}"
#
# end
# ayam(1)

# puts "#{add(-10,2,3)}"
# puts substract(4,5,1)
# calculate(4,5,add:true)
# c = add:true
# puts c.class
# puts add:true
