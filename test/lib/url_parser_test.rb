require File.dirname(File.expand_path(__FILE__)) + '/../test_helper'

describe UrlParser do
  describe "Vaild URL" do
    subject {UrlParser.new("http://35.webmusic.in/music/hindi/movies/2013/g/go_goa_gone/Slowly-Slowly_(webmusic.in).mp3")}

    it "should return file name" do
      subject.file.must_equal "Slowly-Slowly_(webmusic.in).mp3"
    end

    it "should return folder path" do
      subject.folder.must_equal "music/hindi/movies/2013/g/go_goa_gone"
    end

    it "should return fullpath" do
      subject.fullpath.must_equal "music/hindi/movies/2013/g/go_goa_gone/Slowly-Slowly_(webmusic.in).mp3"
    end

    it "should return host" do
      subject.host.must_equal "35.webmusic.in"
    end

    it "should return path" do
      subject.path.must_equal "/music/hindi/movies/2013/g/go_goa_gone/Slowly-Slowly_(webmusic.in).mp3"
    end
  end

  describe "URL contained invalid characters" do
    it "should return file name" do
      url_parser = UrlParser.new("http://35.webmusic.in/music/hindi/movies/2013/g/go_goa_gone/Slowly-Slowly-[Full-Song]_(webmusic.in).mp3")
      url_parser.file.must_equal "Slowly-Slowly-[Full-Song]_(webmusic.in).mp3"
    end
  end
end

