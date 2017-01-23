#db/seeds.rb

#PHP
#for ($i = 0; $i < 1000; $i++){
#  
#}

#albums avec des released_at
3.times do |a|
  puts "Creating album #{a}"
  album = Album.create({title: "Album numéro #{a}",
                        released_at: Time.zone.now })
  
  12.times do |i|
    puts "  Creating Track number #{i}"
    album.tracks.create({title: "Awesome track #{i}"})
  end
end

#Albums sans released_at
3.times do |a|
  puts "Creating album #{a}"
  album = Album.create({title: "Album numéro #{a}",
                        released_at: nil })
  
  12.times do |i|
    puts "  Creating Track number #{i}"
    album.tracks.create({title: "Awesome track #{i}"})
  end
end