class UrlsController < ApplicationController
	def index
		@urls = Url.all
	end

	def create
		byebug
	end

end