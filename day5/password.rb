class Count
	def text_cout
		puts ""
		text= gets.chomp
		if text.split.size == 1
			puts ""
		else
			puts ""
		end
	end 
end

class Loing
	attr_accessor (:user, :password)






	class Command
    attr_accessor :user, :password
    def initialize
        @user = user
        @password = password
    end
​
    def user_signup
        puts "Create your username"
        @user = gets.chomp
        puts "...and now your password"
        @password = gets.chomp
        puts "User created. Well done!"
    end
​
    def user_login
        puts "Login with User"
        user_request = gets.chomp
        puts "Login with password"
        password_request=gets.chomp
        if user_request == @user && password_request == @password
            #ERROR
        else
            puts "Wrong password. Try again:"
            return user_login
        end
    end
​
    def text_count
        user_signup
        user_login
        puts "Logged in! Give me a sentence, please!"
        text = gets.chomp
        if text.split.size == 1
        puts "The sentence has: #{text.split.size} word"
        else
        puts "The sentence has: #{text.split.size} words"
        end
    end
end
​
new_user= Command.new
new_user.text_count