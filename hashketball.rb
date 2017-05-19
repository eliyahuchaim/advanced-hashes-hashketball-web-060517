def game_hash

  game = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
      "Alan Anderson" => {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1,
      },
      "Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7,
      },
      "Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15,
      },
      "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5,
      },
      "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1,
    },
    },
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Purple", "Turquoise"],
    :players => {
      "Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2,
      },
      "Bismak Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10,
        },
    "DeSagna Diop" => {
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5,
  },
  "Ben Gordon" => {
    :number => 8,
    :shoe => 15,
    :points => 33,
    :rebounds => 3,
    :assists => 2,
    :steals => 1,
    :blocks => 1,
    :slam_dunks => 0,
},
"Brendan Haywood" => {
  :number => 33,
  :shoe => 15,
  :points => 6,
  :rebounds => 12,
  :assists => 12,
  :steals => 22,
  :blocks => 5,
  :slam_dunks => 12,
},

},
},
}

end


def num_points_scored(player)

points_to_output = nil

  game_hash.each do |team, attributes|
      attributes.each do |key,value|
        if key == :players
          value.each do |names,att|
            if names == player
            att.each do |stats1,points|
              if stats1 == :points
                  points_to_output = points
    end
end
end
end
end
end
end
return points_to_output
end

def shoe_size(player)

  shoe_to_output = nil

    game_hash.each do |team, attributes|
        attributes.each do |key,value|
          if key == :players
            value.each do |names,att|
              if names == player
              att.each do |stats1,shoe|
                if stats1 == :shoe
                    shoe_to_output = shoe
      end
  end
  end
  end
  end
  end
  end
  return shoe_to_output
end

  def team_colors(team)

color = ""
          game_hash.each do |home,attributes| #home is team
            attributes.each do |info, stats| #info is team info
              if stats == team
                attributes.each do |i,s|
                  if i == :colors
                    color = s
                  end
                end
              end
            end
          end
          color
        end


def team_names

t = []

  game_hash.each do |home, attributes|
    attributes.each do |info,stats|
      if info == :team_name
        t << stats
        end
      end
end
t
end


def player_numbers(team)

number_to_output = []

game_hash.each do |tea, attributes|
    attributes.each do |info,stats|
      if stats == team
        attributes.each do |i,s|
          if i == :players
            s.each do |st, inf|
                inf.each do |k,v|
                  if k == :number
                    number_to_output << v
end
end
end
end
end
end
end
end
number_to_output
end

def player_stats(player)

e = ""

        game_hash.each do |team, attributes|
            attributes.each do |key,value|
              if key == :players
                value.each do |names,att|
                  if names == player
                    e = att
                  end
                end
              end
            end
          end
          e
        end

def big_shoe_rebounds

  biggest_shoe = nil
  most_rebounds = nil

    game_hash.each do |team, attributes|
        attributes.each do |key,value|
          if key == :players
            value.each do |names,stats|
              stats.each do |k,v|

                if k == :shoe
                  if biggest_shoe == nil || v > biggest_shoe
                  biggest_shoe = v
                end
              end
            end
          end
        end
      end
    end
          game_hash.each do |team, attributes|



                     attributes[:players].each do |metrics,number|
                          if number[:shoe] == biggest_shoe
                            most_rebounds = number[:rebounds]

                  end
                end
              end
              most_rebounds
            end




    #game_hash.each do |team, attributes|
      #attributes.each do |key,value|
          #if key == :players
            #value.each do |name,stats|
              #stats.each do |metric, number|
                #if number == biggest_shoe
                  #stats.each do |m,n|
                    #if m == :rebounds
                      #puts n
