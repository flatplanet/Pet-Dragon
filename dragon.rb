class Dragon

    
    def initialize
        @name_dragon = "Bill"
        @feed_dragon = ""
        @walk_dragon = ""
        @sleep_dragon = ""
    end


    def name_dragon
        return "Your Dragon's name is #{ @name_dragon }"
    end
     
    def name_dragon=( name_dragon )
        @name_dragon = name_dragon
    end





    
    def menu ()
        menu_string = "1. Name Your Dragon\n"
        menu_string += "2. List Dragon's Name\n"
        menu_string += "3. Feed Dragon\n"
        menu_string += "4. Walk Dragon\n"
        menu_string += "5. Sleep Dragon\n"
        menu_string += "6. Quit\n"
        return menu_string
    end




end

dragon = Dragon.new

choice = 0
while choice < 6 do     
    puts dragon.menu
    choice = gets.to_i
    
    if choice == 1
        print "Enter Name: "
        name_my_dragon = gets
        dragon.name_dragon=(name_my_dragon)
    elsif choice == 2
        puts dragon.name_dragon
    elsif choice == 3
        puts "\n\nSubtract some Numbers\n\n"
    else
    end


end