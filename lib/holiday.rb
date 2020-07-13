require 'pry'
# given that holiday_hash looks like this:
# {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }

###    return the second element in the 4th of July array
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end



###    add the second argument, which is a supply, to BOTH the
###    Christmas AND the New Year's arrays
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday_name, supplies|
    supplies << supply
  end
end



###    add the second argument to the memorial day array
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end


###    Write a method that adds a new holiday and its associated supplies ###    to any season.
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end



###    return an array of all of the supplies that are used in the winter ###    season
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end


###    iterate through holiday_hash and print items such that your readout  ###    resembles:
      # Winter:
      #   Christmas: Lights, Wreath
      #   New Years: Party Hats
      # Summer:
      #   Fourth Of July: Fireworks, BBQ
      # etc.
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday_name, supply|
      puts "  #{holiday_name.to_s.split("_").each {|name| name.capitalize!}.join(" ")}: #{supply.each {|item| item.capitalize}.join(", ")}"
    end
  end
end



###    return an array of holiday names (as symbols) where supply lists
###    include the string "BBQ"
def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |name, supply|
      if supply.include?("BBQ")
        new_array << name
      end
    end
  end
  new_array
end
