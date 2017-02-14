require 'rails_helper'

RSpec.feature 'Authenticated User' do
  context 'goes to hot reads index' do
    scenario 'hot reads are listed' do
      link = "{\"id\":5,\"title\":\"asdf\",\"url\":\"http://www.example.com\",\"read\":false,\"created_at\":\"2017-02-14T01:49:09.941Z\",\"updated_at\":\"2017-02-14T01:49:09.941Z\",\"user_id\":null}"
      conn = Faraday.new(:url => 'http://localhost:3000/urls')
    # https://hot-reads.herokuapp.com

      conn.post do |req|
        req.params[:body] = link
      end

      expect(Url.all.count).to eq(1)
    end
  end
end