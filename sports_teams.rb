class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

    def initialize(team_name, players, coach, points)
      @team_name = team_name
      @players = players
      @coach = coach
      @points = points
    end


    def add_player_to_player_array(new_player)
      @players.push(new_player)
    end

    def is_player_in_team(player)
      @players.include?(player)
    end

    def team_win_point_adder(result)
      if result == "Win"
        @points += 1
      end  
    end

end
