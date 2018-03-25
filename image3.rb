image = [[0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]]

	image.each do |row|
		puts row.inspect
		row.each do |cell|
			print cell.inspect
		end
	end	 
