def traffic_light_action_with_input
  traffic_light = {
    'red' => 'stop',
    'yellow' => 'wait',
    'green' => 'go'
  }

  puts 'Please enter "green", "yellow" or "red" '

  while color = gets.chomp
    if color == 'red' || color == 'yellow' || color == 'green'
      puts traffic_light[color]
    elsif color == 'exit'
      break
    else
      puts 'Wrong data. Please enter "green", "yellow" or "red" '
    end

    puts 'type "exit" to stop the program'
    puts 'type "green", "yellow" or "red" '
  end
end

traffic_light_action_with_input