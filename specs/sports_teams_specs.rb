require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative('../sports_teams')

class TestSportsTeam < MiniTest::Test

    def test_team_name_search
      sports_team = SportsTeam.new("Manchester United", ["David Hasselhof", "Zoe Ball", "Kermit T Frog" ], "Terry McTerry")
      assert_equal("Manchester United", sports_team.team_name)
    end
end
