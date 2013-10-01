class String

  def reverse_binary
    self.to_i.to_s(2).reverse.to_i(2)
  end

end

print "Please give me an integer: "
input = gets

puts "I reversed this number in binary: #{input.reverse_binary}"