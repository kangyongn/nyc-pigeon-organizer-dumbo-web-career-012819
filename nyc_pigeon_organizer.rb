require "pry"
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, info|
    data[:gender].each do |sex, name|
      name.each {|pigeon| pigeon_list[pigeon] = {color: [], gender: [sex.to_s], lives:[]}}
    end
    info.each do |trait, name|
      name.each do |pigeon|
        pigeon_list[pigeon][category.to_sym] << trait.to_s
      end
    end
  end
  binding.pry
  pigeon_list
end