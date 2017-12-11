# list = []
# puts list.class

list = Array.new

# list[0] = "hello"
# list[1] = "hi"

# list = ["hello", "hi"]

# count = {}
# puts count.class

count = Hash.new(0) #괄호하고 0을 하는 것은 해쉬를 0으로 초기화하는 것이다.
count["1key"] += 1
puts count