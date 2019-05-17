print "数字を入れるとそこまでの素数を表示するよ>>"
num = gets.to_i
if num <= 100000
  primeNumbers = []
  (1..num).each do |i|
    next if i == 1
    if i == 2
      primeNumbers.push i
      next
    end
    judge = true
    primeNumbers.each do |number|
      if i % number == 0
        judge = false
        break
      end
    end

    primeNumbers.push i if judge
  end

  puts primeNumbers.join(" ")
else
  puts "数字が大きすぎるよ（最高100,000)まで"
end
