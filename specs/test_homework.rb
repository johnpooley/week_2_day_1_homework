require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../homework')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestHomework < Minitest::Test

  def setup
    @cohort_student = CohortStudent.new('John','G17')
  end

  def test_get_student_name
    assert_equal('John', @cohort_student.get_student_name)
  end

  def test_get_cohort
    assert_equal('G17', @cohort_student.get_cohort)
  end

  def test_set_student_name
    @cohort_student.set_student_name('Not John')
    assert_equal('Not John',@cohort_student.get_student_name)
  end

  def test_set_cohort
    @cohort_student.set_cohort('3')
    assert_equal('3', @cohort_student.get_cohort)
  end

  def test_student_says
    @cohort_student.student_says
    assert_equal("John says 'Yeah boi!'", @cohort_student.student_says)
  end

  def test_favourite_language
    @cohort_student.favourite_language('English')
    assert_equal("John likes English", @cohort_student.favourite_language('English'))
  end








end


class Testhomework2 < Minitest::Test
  def setup

    @my_team = SportsballTeam.new("Teamsters",["mathew",'Mark','Luke','John'],"Skip")
  end

  def test_get_team_name
    assert_equal("Teamsters", @my_team.team_name)
  end

  def test_get_players
    assert_equal(["mathew",'Mark','Luke','John'], @my_team.players)
  end

  def test_get_coach
    assert_equal("Skip", @my_team.coach)
  end

  def test_add_new_player
    @my_team.add_new_player("Steve")
    assert_equal(["mathew",'Mark','Luke','John', "Steve"], @my_team.players)
  end

  def test_find_player
    assert_equal(true, @my_team.find_player('Mark'))
  end

  def test_find_player_false
    assert_equal(nil, @my_team.find_player('Jesus') )
  end

  def test_game_result_win
    puntos = @my_team.game_result('win')
    assert_equal(puntos,1 )
  end

  def test_game_result_loss
    puntos = @my_team.game_result('loss')
    assert_equal(puntos, 0 )
  end



end
