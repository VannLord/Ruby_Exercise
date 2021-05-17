a = Array.new 5,0

for i in (1..5)
  p "Enter value of a[#{i-1}] : "
  a[i-1] = gets.to_i
end

b = Proc.new do |a|
  a.map {|ea| [6,7].include?(ea) ? ea : ea ** 2 }
end


p a
p a.sum
p b.call a


