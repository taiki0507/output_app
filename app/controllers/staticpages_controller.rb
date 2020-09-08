class StaticpagesController < ApplicationController
  require "mechanize"

  def home
    
  end
  
  def show
  end
  
  def news
    agent = Mechanize.new
    page = agent.get("https://datawokagaku.com/?s=docker")
    @elements= page.search('.post-list-card a')
  end
end
