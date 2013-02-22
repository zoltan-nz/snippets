def input_integers

  output = []

  puts "Type for me two integers, please."

  n = 0
  until 1 <= n && n <= 50000
    begin
      print "Number of songs on the album [1..50000]: "
      n = gets
      n = n.to_i
    end
  end

  output << n

  m = 0
  until 1 <= m && m <= n
    begin
      print "Number of songs to select [1..#{n}]: "
      m = gets
      m = m.to_i
    end
  end

  output << m

  return output

end

def input_songs(n)

  puts "Please write me a list of songs. Example: 30 This is the title"

  songlist = Hash.new
  
  1..n.times do |num|
    counter = num+1
    print "#{counter}. song frequency and title: "
    input = gets
    splitted = input.split(/^(\d+)\s([\w\s]+)/) #Splits in 3 pieces the input
    if splitted.size <= 1 #If format is not correct, repeat
      puts "The format was not correct! Please try again."
      redo
    end
    songlist[counter.to_s.to_sym] = {:order => counter, :frequency => splitted[1], :title => splitted[2]}
  end
  
  return songlist
  
end

two_numbers = input_integers

songlist = input_songs(two_numbers[0])

sorted = songlist.sort_by{|k,v| v[:frequency]}.reverse

m = two_numbers[1]

1..m.times do |num|
  puts sorted[num][1][:title]
end