
def gold_room
  prompt = "> "
  puts "You find an new room."
  puts "This room is full of gold. How much do you take?"
  print prompt
  choice = $stdin.gets.chomp

  if choice.include?("0") || choice.include?("1")
    how_much = choice.to_i
  else
    dead("Man, learn to type a number!")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end

def bear_room
  prompt = "> "
  txt = <<END
  There is a bear here.
  The bear has a bunch of honey.
  the fat bear is in front of another door.
  How are you going to move the bear?
  (do you [take] the honey or [taunt] or [open] the door?)
END
bear_moved = false
door_open = false
  while true
    print txt
    print prompt
    choice = $stdin.gets.chomp

    if choice == "take"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt" && !bear_moved
      dead("The bear has moved from the door. You can go open the door now.")
      bear_moved = true
      redo
    elsif choice == "open door"
      gold_room unless bear_moved
      dead("The bear gets pissed off and chews you leg off.") unless !bear_moved
      door_open = true
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulhu_room
  prompt = "> "
  txt = <<END
  Here you see the great evil Cthulhu
  He, if, whatever stares at you and you go insane.
  Do you flee for your life or heat your head?
END

  puts txt
  print prompt
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  prompt = "> "
  txt = <<END
  You are in a dark room.
  There is a door to your right and left.
  Which one do you take?
END

  puts txt
  print prompt
  choice = $stdin.gets.chomp
  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stubmle around the room until you starve.")
  end
end

start
