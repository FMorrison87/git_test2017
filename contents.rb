def contents
	contents = ["Some Snuts", "Chapter 1: Butts", "page 1", "Chapter 2: Noses", "page 68"]
	linewidth = 60
	puts contents[0].center linewidth
	puts contents[1].ljust(linewidth/2) + contents[2].rjust(linewidth/2)
	
end

contents