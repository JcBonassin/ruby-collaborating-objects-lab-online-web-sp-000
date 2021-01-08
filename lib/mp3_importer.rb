class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def file
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

    # ||= is a ruby idiom. It means if @current_user is nil (or false) then try to find it by id and assign it to @current_user, otherwise do nothing.
end
