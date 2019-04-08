require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative('../codeclan_students_class')

class TestCodeClanStudent < MiniTest:: Test

  def test_codeclan_student_name_search
    codeclan = CodeClanStudent.new('John', 'E31')
    assert_equal("John", codeclan.student_name)
  end

  def test_codeclan_cohort_search
    codeclan = CodeClanStudent.new('John', 'E31')
    assert_equal('E31', codeclan.cohort)
  end

  def test_can_update_student_name
    codeclan = CodeClanStudent.new('John', 'E31')
    codeclan.student_name = 'Terry'
    assert_equal("Terry", codeclan.student_name)
  end

  def test_can_update_cohort
    codeclan = CodeClanStudent.new('John', 'E31')
    codeclan.cohort = "E44"
    assert_equal("E44", codeclan.cohort)
  end

  def test_can_get_student_to_talk
    codeclan = CodeClanStudent.new('John', 'E31')
    can_get_student_to_talk = "I can talk"
    assert_equal("I can talk", codeclan.can_get_student_to_talk)
  end

  def test_student_favourite_language
    codeclan = CodeClanStudent.new('John', 'E31')
    favourite_language = codeclan.student_favourite_language("Ruby")
    assert_equal("I love Ruby", favourite_language)
  end

  
end
