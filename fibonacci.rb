class Integer

  def fibonacci
    number = self
    return number if number < 2

    values = [0,1]

    (number - 1).times do
      values.push(values[-1] + values[-2])
    end

    return values.last
  end

end

MAX = 4000000
summary = 0
series = 0

loop do
  fibo = series.fibonacci
  break if fibo >= MAX
  summary += fibo if fibo.even?
  series += 1
end

#Additional classes making a little bit readable a long integer
puts summary.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
