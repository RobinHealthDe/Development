class MainController < ApplicationController
	http_basic_authenticate_with name: "robinhealth", password: "password"

	def home
	end
end
