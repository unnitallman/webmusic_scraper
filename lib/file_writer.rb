class FileWriter
  def initialize(data, folder_path, file_name)
    @file = File.join folder_path, file_name
    @data = data
    @folder_path = folder_path

    create_folder
  end

  def write
    puts "Writing #{@file} ..."
    open(@file, "wb") do |f|
      f.write @data
    end
    puts "Done"
  end

  private
  def create_folder
    `mkdir -p #{@folder_path}`
  end

end
