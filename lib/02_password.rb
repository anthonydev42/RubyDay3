def signup
    puts "Define your password ?"
     $signup = gets.chomp
end


def login
    puts "Enter your password"
    login = gets.chomp
    while $signup != login
        puts "Wrong password"
        puts "Please try again"
        login = gets.chomp
    end
end 


def welcome_screen 
    puts "Welcome to the secret lab"
end
     
def perform
    signup
    login
    welcome_screen
end

perform