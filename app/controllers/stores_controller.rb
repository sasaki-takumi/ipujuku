class StoresController < ApplicationController

	def index
		location = params['location']
		type = params['type']

		@store = []

		if !location.blank?
			id = '0f4983d3942287acf49389a7eb752e8ca3f15f4d'

			json = RestClient.get'http://api.gourmet.livedoor.com/v1.0/restaurant/?api_key='+id+'&pref_id='+location+'&category_id='+type+'&type=json'
			
			@store = JSON.parse(json)

		end
	end

end