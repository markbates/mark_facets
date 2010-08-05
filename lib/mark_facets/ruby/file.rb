class File
  
  class << self
    
    def update(file_path)
      file = File.read(file_path)
      yield file
      File.open(file_path, 'w') {|f| f.write(file)}
    end
    
  end
  
end