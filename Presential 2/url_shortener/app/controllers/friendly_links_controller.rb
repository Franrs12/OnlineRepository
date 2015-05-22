class FriendlyLinksController < ApplicationController
	def home
		@urls = FriendlyLink.all
	end
	def redirect
		begin
			@url_to = FriendlyLink.find params[:id]
			@url_to.visit += 1
			@url_to.save
			redirect @url_to.friendly_link
		rescue ActiveRecord::RecordNotFound
			render 'no_url_found'
		end
	end
end
