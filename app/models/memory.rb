class Memory < ActiveRecord::Base
  belongs_to :song
  belongs_to :user

  def self.best_memory 
    Memory.find_by(name: "graduation")
  end  

  def delete_last_memory 
    Memory.destory(4)
  end  

end
