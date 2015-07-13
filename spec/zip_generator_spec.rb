require 'zip_generator'
require 'spec_helper'

describe ZipGenerator do

 it "should return a zipped file containing all the files supplied as array" do
 	file1 = {data: File.open("file1.txt", "w+") {|f| f.write("File Content for file 1") } , name: "file1.txt"}
 	file2 = {data: File.open("file2.txt", "w+") {|f| f.write("File content for file 2") } , name: "file2.txt"}
 	file_arr = [file1,file2]
 	zipped = ZipGenerator.generate_zip_files(file_arr)
 	zipped.should be_a_kind_of(String) 
 end
 it "should raise error" do
 	file1 = {content: File.open("file1.txt", "w+") {|f| f.write("File Content for file 1")} }
 	zipped = ZipGenerator.generate_zip_files([file1])
 	zipped.should be_a_kind_of(RuntimeError) 
 end
end