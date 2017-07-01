require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }

def nyc_pigeon_organizer(data)
  reorg_hash = {}
  data.each do |group, values|
    values.each do |trait, names_array|
      names_array.each do |pigeon|
        if reorg_hash.has_key?(pigeon)
          if reorg_hash[pigeon].has_key?(trait)
            reorg_hash[pigeon][trait] << trait.to_s
          elsif  reorg_hash[pigeon][group].is_a?(Array)
            #reorg_hash[pigeon][group] = []
            reorg_hash[pigeon][group] << trait.to_s
          else 
            reorg_hash[pigeon][group] = []
            reorg_hash[pigeon][group] << trait.to_s
          end
        else 
          reorg_hash[pigeon] = {group => []}
          reorg_hash[pigeon][group] << trait.to_s
        end
      end
    end
  end
  reorg_hash
end