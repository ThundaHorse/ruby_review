puts "Mississippi" 
5.times do 
  puts "Mississippi" 
end

i = 1
while i <= 5 
  puts "#{i} Mississippi" 
  i += 1 
end 

cities = ["Jackson", "Southhaven", "Oxford", "Vicksburg", "Booneville", "Nowhere"] 

cities.each_with_index do |city, idx| 
  p "#{idx += 1}. #{city}, Mississippi"
end 

