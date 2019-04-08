require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative('../sports_teams')

class TestSportsTeam < MiniTest::Test

    def test_team_name_search
      sports_team = SportsTeam.new("Manchester United", ["David Hasselhof", "Zoe Ball", "Kermit T Frog" ], "Terry McTerry", 0)
      assert_equal("Manchester United", sports_team.team_name)
    end


  def test_coach_name_change
    sports_team = SportsTeam.new("Manchester United", ["David Hasselhof", "Zoe Ball", "Kermit T Frog" ], "Terry McTerry", 0)
    sports_team.coach = "Jackie Chan"
    assert_equal("Jackie Chan", sports_team.coach)
  end

  def test_add_player_to_player_array
    sports_team = SportsTeam.new("Manchester United", ["David Hasselhof", "Zoe Ball", "Kermit T Frog" ], "Terry McTerry", 0)
    sports_team.add_player_to_player_array("Mrs Piggy")
    assert_equal(4, sports_team.players.length)

  end

  def test_is_player_in_team__true
    sports_team = SportsTeam.new("Manchester United", ["David Hasselhof", "Zoe Ball", "Kermit T Frog" ], "Terry McTerry", 0)
    sports_team.is_player_in_team("Zoe Ball")
    assert_equal(true, sports_team.is_player_in_team("Zoe Ball"))
  end

  def test_team_win_point_adder
    sports_team = SportsTeam.new("Manchester United", ["David Hasselhof", "Zoe Ball", "Kermit T Frog" ], "Terry McTerry", 0)
    sports_team.team_win_point_adder("Win")
    assert_equal(1, sports_team.points)
  end

end
