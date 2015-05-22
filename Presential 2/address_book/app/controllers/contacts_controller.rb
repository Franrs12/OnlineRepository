class ContactsController < ApplicationController
	def home
		@contact = Contact.index
	end
end
