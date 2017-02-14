
class UrlsController < ApplicationController
	def index
		@urls = Url.all.limit(10)
	end

	def create
		url_path = JSON.parse(params[:body])['url']
		url_record = Url.find_or_create_by(url: url_path)
		url_status = url_record.status.to_i
		url_record.status = (url_status + 1)
		url_record.save
	end

end