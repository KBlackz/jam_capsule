class Song < ActiveRecord::Base
    has_many :memories
    has_many :users, through: :memories

    def song_playlist
        Song.all
    end    


    def self.we_are_young
        pid = fork{ exec 'afplay', "app/song.mp3" }
        binding.pry
    end 


    # def graduation_song
    #     pid = fork{ exec 'afplay', "../filename.mp3" }
    # end   
    
    # def first_vaction_with_the_boys 
    #     pid = fork{ exec 'afplay', "../filename.mp3" }
    # end    

    # def firs_job_make_over_twentyfive_dollars
    #     pid = fork{ exec 'afplay', "../filename.mp3" }
    # end

    # def stop_audio 
    #     pid = fork{ system 'killall', 'afplay' }
    # end    

    def self.last_song
        Song.last.name
    end    

end
