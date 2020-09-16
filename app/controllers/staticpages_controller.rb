class StaticpagesController < ApplicationController
  require "mechanize"

  def index
  end
  
  def new
    @staticpage =  Staticpage.new
  end
 
  def home
    
    @staticpage =  Staticpage.new
    @staticpage = Staticpage.find_by(params[:title])
    
    @title = Staticpage.where(params[:title])
    @content = Staticpage.where(params[:content])
    
    agent = Mechanize.new
    page = agent.get("https://jp.techcrunch.com/search/AI#stq=AI&stp=1")
    @elements= page.search('header div')
    @p=page.search('div')
  end
  
  def show
    
    @staticpage = Staticpage.where(params[:title])
    
    @title = Staticpage.where(params[:title])
    @content = Staticpage.where(params[:content])
  end
  
  def news
    agent = Mechanize.new
    page = agent.get("https://jp.techcrunch.com/search/AI#stq=AI&stp=1")
    @elements= page.search('.post-title h2')
    @p=page.search('.excerpt p')
  end

end
