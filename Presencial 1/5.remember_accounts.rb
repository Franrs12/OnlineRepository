class Account

    @@insecure_accounts = 0

	attr_accessor :website, :user, :password

    def initialize website, user, password
    	@website = website
    	@user = user
    	@password = password
        @encrypted_password = false
        @decrypted_password = false
        if @password.length < 5
            @@insecure_accounts += 1
        end
    end
    def show_total_insecure_accounts
        @@insecure_accounts
    end
    def encrypt_password
    	if @encrypted_password == true
            puts 'Password already encrypted.'
        else
            encrypt = ''
        	password.each_byte do |ascii|
        		encrypt << ascii + 3
            end
        end
        @password = encrypt
    	puts encrypt
        @encrypted_password = true
    end
    def decrypt_password
        if @decrypted_password == true
            puts 'Password already decrypted.'
        else
        	decrypt = ''
        	password.each_byte do |ascii|
        		decrypt << ascii - 3
        	end
        end
    	@password = decrypt
        puts decrypt
        @decrypted_password = true
    end
end


facebook = Account.new 'facebook.com', 'Fran', 'asdf1234ddd$%&/'
twitter = Account.new 'twitter.com', 'Fran', 'a)'
tuenti = Account.new 'tuenti.es', 'Fran', 'a78'

puts facebook.password
facebook.encrypt_password

facebook.decrypt_password

facebook.decrypt_password

facebook.encrypt_password
facebook.encrypt_password

puts twitter.website
puts twitter.user
puts twitter.password

puts facebook.show_total_insecure_accounts

