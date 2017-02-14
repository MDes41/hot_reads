
class UrlsController < ApplicationController
	def index
		@urls = Url.all.limit(10)
	end

	def create
		url = JSON.parse(params[:body])['url']
		Link.create(url: url)
	end

end