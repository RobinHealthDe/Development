class MainController < ApplicationController
	http_basic_authenticate_with name: "rbenning@arzthelden.de", password: "Test#1Test#1"

	def home
	end
end
