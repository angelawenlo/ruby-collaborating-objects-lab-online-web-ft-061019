
class MP3Importer
  attr_accessor :path
  #path = "./spec/fixtures/mp3s"
  def initialize(path)
    @path = path
  end

  def files
    Dir[@path+"/*.mp3"].map do |file|
      file.split("/").last
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
