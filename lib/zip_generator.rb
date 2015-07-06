require "zip_generator/version"
require "zip"
require "zip/zipfilesystem"

module ZipGenerator
  # Your code goes here...
  def generate_zip_files files 
  	#files should be an array of Hash {data: file_content ,name: file_name}
  	stringio = Zip::ZipOutputStream::write_buffer do |zio|
  		files.each do |key|
  			zio.put_next_entry(key[:name])
  			zio.write key[:data]
  		end
  	end
  	stringio.rewind
  	stringio.sysread
  end
end
