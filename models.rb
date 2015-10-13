class User < ActiveRecord::Base
    has_many :posts
    has_one :profile
    has_one :username
   
end

class Post < ActiveRecord::Base
    belongs_to :user 
end

class Profile < ActiveRecord::Base
    belongs_to :user 
end

class Followers < ActiveRecord::Base
	belongs_to :user
end	
