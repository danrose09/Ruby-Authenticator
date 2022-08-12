users = [
  { username: 'daniel', password: '12345' },
  { username: 'cara', password: '54321' },
  { username: 'ivan', password: 'chicken' }
]

puts 'Welcome to the authenticator!'
25.times { print '-' }

puts "\n This program will take input from the user and compare password."
25.times { print '-' }
puts "\n If the password you enter is          correct you will get back the username.\n Press 'y' to continue or 'n' to exit program."

loop = true
continue = gets.chomp

while loop
  if continue == 'y'
    loop = false

  elsif continue == 'n'
    puts 'exiting authenticator'
    exit
  else
    puts "Press 'y' to continue or 'n' to exit program."
    continue = gets.chomp
  end
end

attemps = 1
while attemps < 4
  puts 'Please enter a username'
  username = gets.chomp.downcase
  puts '\n Please enter a password'
  password = gets.chomp
  users.each do |user|
    print user[:username] + ' ' + user[:password] if user[:password] == password && user[:username] == username
  end
  attemps += 1
end
