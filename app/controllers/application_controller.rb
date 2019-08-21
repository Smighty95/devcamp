class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	include DeviseWhitelist
	include SetSource
	include DefaultPageContent

	before_action :set_title
	before_action :set_copyright

	def set_copyright
		@copyright=SmightyViewTool::Renderer.copyright 'John Wick', 'All rights reserved'
	end
	
	def set_title
		@page_title="DevcampPortfolio | My Portfolio Website"
	end
end

#module SmightyViewTool
#	class Renderer
#		def self.copyright name, msg
#			"&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
#		end
#	end
e#nd
