class CodeClanStudent

  attr_accessor :student_name, :cohort
  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def can_get_student_to_talk
    return "I can talk"
  end

  def student_favourite_language(language)
    return "I love #{language}"
  end




end
