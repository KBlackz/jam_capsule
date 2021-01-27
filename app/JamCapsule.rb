class JamCapsule
  attr_reader :user
  attr_accessor :memory
  # here will be your CLI!
  # it is not an AR class so you need to add attr

  def run
    login_or_signup
    welcome
    memories
    chosen_memory 

    #  puts graduation
    # exit
  end

  private

  def login_or_signup
    puts "Would you like to sign up or login"
    answer = gets.chomp
    if answer == "yes" 
      puts "Whats is your username"
      username = gets.chomp
      @user = User.find_or_create_by(username: username)

    end
    # binding.pry
    sleep(1.5)
  end 

  def welcome
    puts "Welcome to the Capsule"
    sleep(1.7)
    puts "Enjoy your experience"
    sleep(3.0)
    puts "This is your memory list"
  
  end  

  def memories
   puts "Graduation"
   sleep(2.0)
   puts "First vacation with the boys"
   sleep(2.0)
   puts "Frist job that paid over $25"
   sleep(2.0)
  end  

  def chosen_memory 
    puts "Would you like to pick a memory"
    answer = gets.chomp
    if answer == "yes"
      puts "What's is your choice"
      name = gets.chomp
      @memory = Memory.find_or_create_by(name: "graduation" || "First vacation with the boys" || "Frist job that paid over $25") 
      # binding.pry
      puts "Great Choice"
    end
  end  

  def delete_last_memory 
    Memory.last.destroy
  end 

  def create_song
    all_in = Song.create(name: "All in")
  end

  def update_memory
    Memory.last.update(date_and_time: "11 4 1999")
  end  

  def graduation
    Memory.best_memory
  end  
  
end
