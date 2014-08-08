def caesar_cipher(statement,num)
	statement=statement.split("")
	for index in 0..statement.length-1 do
		if statement[index] =~ /[A-Z]/
			if statement[index].ord+num>90
				add=num%26
				if add>(90-statement[index].ord)
					add=add+statement[index].ord-90
					statement[index]=(64+add).chr
				else
					statement[index]=(statement[index].ord+add).chr
				end
			else
				statement[index]=(statement[index].ord+num).chr
			end
		elsif statement[index] =~ /[a-z]/
			if statement[index].ord+num>122
				add=num%26
				if add>(122-statement[index].ord)
					add=add+statement[index].ord-122
					statement[index]=(96+add).chr
				else
					statement[index]=(statement[index].ord+add).chr
				end
			else
				statement[index]=(statement[index].ord+num).chr
			end
		end
	end
	statement=statement.join("")
	return statement
end