def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attribute, categories|
    categories.each do |category, pigeons|
      pigeons.each do |pigeon|
        pigeon_list[pigeon] = {} unless pigeon_list.has_key?(pigeon)
        if pigeon_list[pigeon].has_key?(attribute)
          pigeon_list[pigeon][attribute] << category.to_s
        else
          pigeon_list[pigeon][attribute] = [] << category.to_s
        end
      end
    end
  end
  pigeon_list
end
