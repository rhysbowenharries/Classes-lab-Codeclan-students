class SportsTeam

  attr_accessor :team_name, :players, :coach

    def initialize(team_name, players, coach)
      @team_name = team_name
      @players = players
      @coach = coach
    end


    def add_player_to_player_array(new_player)
      @players.push(new_player)
    end

    def is_player_in_team(player)
      @players.include?(player)
    end

end
