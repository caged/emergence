require 'rubygems'
require 'sinatra'

# A few helpers
helpers do
  def stylesheet_link_tag(*stylesheets)
    stylesheets.collect do |stylesheet|
      stylesheet = "#{stylesheet}.css" unless stylesheet =~ /\.css$/
      %(<link rel="stylesheet" type="text/css" charset="utf-8" href="stylesheets/#{stylesheet}" />\n)
    end
  end

  def javascript_include_tag(*javascripts)
    javascripts.collect do |javascript|
      javascript = "#{javascript}.js" unless javascript =~ /\.js$/
      %(<script src="javascripts/#{javascript}" type="text/javascript" charset="utf-8"></script>\n)
    end
  end
end

# The application
get '/' do
  erb :index
end