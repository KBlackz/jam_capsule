class User < ActiveRecord::Base
  has_many :memories
  has_many :songs, through: :memories 

  def self.create_user(name, username, age)
     anthony=User.create(name: name, username: username, age: age)
  end   

  def self.favorite_memory
    
  end

end
