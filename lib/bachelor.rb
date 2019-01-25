require 'pry'

def get_first_name_of_season_winner(data, season)
new_array =[]
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      new_array << contestant["name"].split
end
end
new_array.flatten[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |person|
      if person["occupation"] == occupation
        return person["name"]
end
end
end
end

def count_contestants_by_hometown(data, hometown)
  new_array =[]
  data.each do |season, info|
    info.each do |person|
     if person["hometown"] == hometown
       new_array << person

end
end
end
return new_array.length
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
end
end
end
end

def get_average_age_for_season(data, season)
counter = 0
new_array = []
  data[season].each do |person|
    new_array << counter += person["age"].to_f
end
answer = new_array[-1]/new_array.length
  return answer.round
end
