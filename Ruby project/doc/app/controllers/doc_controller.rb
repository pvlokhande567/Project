class DocController < ApplicationController
	layout false
  def index
  	render ('hello')
  end
  def hello
  	render ('index')
  end
  def hello1
  	redirect_to(:controller => 'doc',:action => 'index')
  end
   def youtube
  	redirect_to('https://www.youtube.com')
  end
  
end