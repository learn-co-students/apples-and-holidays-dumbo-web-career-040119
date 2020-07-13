require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter][:new_years] << supply
    holiday_hash[:winter][:christmas] << supply
  end



def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day]<< supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] =  supply_array
end

def all_winter_holiday_supplies(holiday_hash)
    winter_supplies = []
    holiday_hash.each do |season, data|
      data.each do |holiday, supply|
        if holiday == :new_years || holiday == :christmas
            supply.each do |supplies|
                winter_supplies << supplies
            end
        end
      end
    end
    return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, data|
        puts "#{season.to_s.capitalize!}:"
      data.each do |holiday,supplies|
        puts "  #{holiday.to_s.split('_').map{|word| word.capitalize!}.join(' ')}: #{supplies.join(", ")}"
      end
    end
end


def all_holidays_with_bbq(holiday_hash)
    holidays = []
    holiday_hash.each do |season, data|
      data.each do |holiday, supplies|
        if supplies.include?("BBQ")
           holidays << holiday
        end
      end
    end
  return holidays
end
