require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |season, holiday|
  s = "#{season.capitalize}:"
  puts s
  holiday.each do |holiday, supply|
  h = "#{holiday}:"
  puts "  " + h.split('_').map(&:capitalize).join(' ') + " #{supply.join(", ")}"
  end
end

all_supplies_in_holidays(holiday_hash)

all_supplies_in_holidays(holiday_supplies)
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  result = []
  holiday_hash.each do |season, holiday|
    holiday.each do |supply, item|
    item.each do |value|
      if value == "BBQ"
    result << supply
       end
      end
    end
  end
result
end




