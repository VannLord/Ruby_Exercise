def intersect a, b
  rs = []
  a.each do |ea|
    rs.push ea if b.include? ea
  end
  rs
end

def outer a, b
  rs = []
  a.each do |ea|
    rs.push ea unless b.include? ea
  end
  rs
end

a =  [2,20,1,"/a","/c",11]
b = [1,"/c/a/","/b","/a",50]
c = 3

p "Ex 1a: #{b.include? c}"
p "Ex 1b: #{intersect a, b}"
p "Ex 1c: #{outer b, a}"

p "Ex 1b: #{a & b}"
p "Ex 1c: #{b - a}"


