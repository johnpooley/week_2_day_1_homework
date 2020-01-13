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
    assert_equal('John', @student_name)
  end

  def test_get_cohort
    assert_equal('G17', @cohort)
  end

end
