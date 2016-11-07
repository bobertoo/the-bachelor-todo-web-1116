def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |c|
        if c["status"] == "Winner"
          winner = c["name"].split[0]
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  occu = ""
  data.each do |season_num, contestants|
    contestants.each do |c|
      if c["occupation"] == occupation
        occu = c["name"]
      end
    end
  end
  occu
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_num, contestants|
    contestants.each do |c|
      if c["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occu = []
  data.each do |season_num, contestants|
    contestants.each do |c|
      if c["hometown"] == hometown
        occu << c["occupation"]
      end
    end
  end
  occu[0]
end

def get_average_age_for_season(data, season)
  av = []
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |c|
        av << c["age"]
      end
    end
  end
  counter = 0
  av.each do |add_me|
    counter += add_me.to_i
  end
  counter = counter.to_f / av.length.to_f
  av
  counter.round
end
