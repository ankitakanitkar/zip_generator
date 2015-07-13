require 'zip_generator'
require 'spec_helper'

describe ZipGenerator do

 it "should return a zipped file containing all the files supplied as array" do
 	file1 = File.open("file1.txt", "w+") {|f| f.write("File Content for file 1") }
 	file2 = File.open("file2.txt", "w+") {|f| f.write("File content for file 2") }
 	file_arr = [file1 , file2]
 	expect {:generate_zip_file(file_arr).to_return true }
 end
end