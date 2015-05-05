def DashInsertII(num)
	num = num.to_s
	for i in 0..num.length-1
		if (num[i].to_i != 0 && num[i].to_i % 2 == 0 && num[i.next].to_i % 2 == 0)
			num.insert(i.next, '*') #Se haría mejor con concat
		elsif (num[i].to_i != 0 && num[i].to_i % 2 == 1 && num[i.next].to_i % 2 == 1)
			num.insert(i.next, '-')
		end
	end
	return num
end

puts DashInsertII(46)
puts DashInsertII(13)
puts DashInsertII(99946)
puts DashInsertII(56647304)

# Check your function
#DashInsertII(99946)  == '9-9-94*6'
#DashInsertII(56647304) == '56*6*47-304'