def picture_download(start, finish)
    Dir.chdir finish

    pic_names = Dir[start]

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:   "

pic_number = 1

pic_names.each do |name|
	print '.'
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end
    
    if File.exist? new_name
        new_name = new_name + "(1).jpg"
    end

	File.rename name, new_name

	pic_number += 1
end

puts
puts "Download Complete!"
end

picture_download('C:/Users/James/Pictures/TestPhotos/*.jpg', 'C:/Users/James/Pictures/Saved Pictures')