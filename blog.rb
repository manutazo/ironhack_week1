class Blog

	def initialize
		@posts = Array.new
	end
	def add_posts(post)
		@posts.push(post)

	end

	def publish_front_page
		posts = @posts.sort {|a,b| a.date <=> b.date} 
		index = 0
		posts_to_publish = pagination_posts(index)
		posts_to_publish.each do |post|
		if post.sponsored == true
		puts "***#{post.tittle}****"
		else 
			puts post.tittle
		end
			# puts post.tittle
			puts post.date
			puts post.text
			puts "********"
			user_action = gets.chomp
			if user_action == "next"
				index += 3	
			end
		end
		
	end

	def pagination_posts(actual_first_posts)
		@posts.slice(actual_first_posts,3)
	end
end

class Post
	attr_reader :tittle, :date, :text, :sponsored
	def initialize(tittle, date, text, sponsored = false)
		@tittle = tittle
		@date = date
		@text = text
		@sponsored = sponsored
	end
end

posts_1 = Post.new("post", "tittle", "1")
posts_2 = Post.new("post", "tittle", "2" )
posts_3 = Post.new("post", "tittle", "3", true)
posts_4 = Post.new("post", "tittle", "4")
posts_5 = Post.new("post", "tittle", "5" )
posts_6 = Post.new("post", "tittle", "6",)
posts_7 = Post.new("post", "tittle", "7")
posts_8 = Post.new("post", "tittle", "8")
blog_1 = Blog.new
blog_1.add_posts(posts_1)
blog_1.add_posts(posts_2)
blog_1.add_posts(posts_3)
blog_1.add_posts(posts_4)
blog_1.add_posts(posts_5)
blog_1.add_posts(posts_6)
blog_1.add_posts(posts_7)
blog_1.add_posts(posts_8)

blog_1.publish_front_page
