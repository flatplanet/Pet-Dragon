class Dragon

    
    def initialize
        @name_dragon = "not chosen yet."
        @stomach_full = 5
        @eating = ""
        @pooping = ""
        @sleeping = false
    end

    def time_passes
        @stomach_full -= 1
        if @sleeping
            @sleeping = false
            puts "#{ @name_dragon } wakes up"
        else
            @sleeping = true
            puts "#{ @name_dragon } goes to sleep"
        end
            
    end

    def name_dragon
        system "clear"
        return @name_dragon
    end
     
    def name_dragon=( name_dragon )
        @name_dragon = name_dragon
        system "clear"
        #time_passes
    end

    
    



    
    def menu ()
        
        menu_string = "1. Name Your Dragon\n"
        menu_string += "2. List Dragon's Name\n"
        menu_string += "3. Feed Dragon\n"
        menu_string += "4. Walk Dragon\n"
        menu_string += "5. Put Dragon To Sleep\n"
        menu_string += "6. Wake Dragon Up"
        menu_string += "7. Quit\n"
        menu_string += "-----------------------\n"
        return menu_string
    end




end
system "clear"
dragon = Dragon.new

choice = 0
while choice < 7 do     
    puts dragon.menu
    choice = gets.to_i
    
    if choice == 1
        print "Enter Name: "
        name_my_dragon = gets
        dragon.name_dragon=(name_my_dragon)
    elsif choice == 2
        puts "Your Dragon's name is #{ dragon.name_dragon }"
    elsif choice == 3
        puts "You Feed #{ dragon.name_dragon }"
    elsif choice == 4
        puts "You Walk #{ dragon.name_dragon.chomp }, #{ dragon.name_dragon.chomp } poops!"
    elsif choice == 5
        puts "You Put #{ dragon.name_dragon.chomp } To Bed"
    elsif choice == 6
        puts "You Wake #{ dragon.name_dragon.chomp } up!"
    else
    
    end


end