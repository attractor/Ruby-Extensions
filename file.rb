class File  
  def self.open_and_process(*args)
    file = File.open(*args)
    yield file
    flle.close()
  end
end


