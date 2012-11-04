{
  %w(Q W E R T A S D G Z X C V B KEY_1 KEY_2 KEY_3 KEY_4 KEY_5) => ['CONTROL_R', 'J'],
  %w(Y U I O P H K L N M KEY_6 KEY_7 KEY_8 KEY_9 KEY_0)         => ['CONTROL_L', 'F']
}.each do |chars, (control, new_modifier)|
  chars.each do |c|
    puts "<autogen>--SimultaneousKeyPresses-- KeyCode::#{new_modifier}, KeyCode::#{c}, KeyCode::#{c}, ModifierFlag::#{control}</autogen>"
  end
end
