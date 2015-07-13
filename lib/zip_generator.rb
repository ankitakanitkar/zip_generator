require "zip_generator/version"
require "zip"
require "zip/zipfilesystem"

module ZipGenerator
  # Your code goes here...
  def self.generate_zip_files files 
  	#files should be an array of Hash {data: file_content ,name: file_name}
  	begin
      stringio = Zip::ZipOutputStream::write_buffer do |zio|
          files.each do |key|
              if key.has_key?('name'.to_sym)
                zio.put_next_entry(key['name'])
                zio.write key['data']
              else
                raise "Format Error"
              end
          end
        end
        stringio.rewind
        stringio.sysread
    rescue => msg
      msg
    end
  end
end
