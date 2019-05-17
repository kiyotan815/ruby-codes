class Fibonacth
  def view_fibonatch(count)
    fib = []
    and
    count.times do |i|
      case i
      when 0
        puts fib << 0
      when 1
        fib << 1
        puts fib.last
      else
        fib << fib.last + fib[-2]
        puts fib.last
        fib.shift
      end
    end
  end

  def target_fibonatch(count)
    fib = []
    count.times do |i|
      case i
      when 0
        fib << 0
      when 1
        fib << 1
      else
        fib << fib.last + fib[-2]
        fib.shift
      end
    end
    puts fib.last
  end
end

fibnatch = Fibonacth.new

print "target: 1, count: 2 >> "
type = gets.to_i

case type
when 1
  print "How many target number? >> "
  count = gets.to_i
  fibnatch.target_fibonatch(count)
when 2
  print "How many times do? >> "
  count = gets.to_i
  fibnatch.view_fibonatch(count)
else
  puts "error"
end
