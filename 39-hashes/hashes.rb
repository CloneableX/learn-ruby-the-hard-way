provinces = {
  "GuangDong" => "GD",
  "ZheJiang" => "ZJ",
  "GuiZhou" => "GZ"
}

cities = {
  "GD" => "GuangZhou",
  "ZJ" => "HangZhou"
}

cities["GZ"] = "GuiYang"

puts "-" * 10
puts "GD Province has: #{cities['GD']}"
puts "ZJ Province has: #{cities['ZJ']}"

puts "-" * 10
puts "GuiZhou abbreviation is: #{provinces['GuiZhou']}"

puts "-" * 10
puts "GuiZhou has: #{cities[provinces['GuiZhou']]}"

puts "-" * 10
provinces.each do |province, abbrev|
  puts "#{province} is abbreviated #{abbrev}"
end

puts "-" * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

puts "-" * 10
provinces.each do |province, abbrev|
  puts "#{province} is abbreviated #{abbrev} and has city #{cities[abbrev]}"
end

province = provinces["HuNan"]
if !province
  puts "Sorry, no HuNan"
end

city = cities["HN"]
city ||= "Does Not Exist"
print "The city for the province 'HN' is: #{city}"
