require 'nokogiri'
require 'open-uri'

class Video
  attr_accessor :video_url

  def initialize

    html = open("https://www.youtube.com/user/mirandasings08/videos")
    miranda_sings = Nokogiri::HTML(html)  
    @video_url = []
    vid = miranda_sings.css(".yt-lockup-thumbnail").each do |video|
      @video_url << "https://www.youtube.com" + video.children[1].children.first.first[1]
  end
  
end   
