class CohortStudent

  def initialize(input_student_name,input_cohort)
    @student_name = input_student_name
    @cohort = input_cohort
  end

# getters

  def get_student_name()
    return @student_name
  end

  def get_cohort()
    return @cohort
  end

  # setters

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

#  other stuff

  def student_says()
    return "#{@student_name} says 'Yeah boi!'"
  end

  def favourite_language(language)
    return "#{@student_name} likes #{language}"
  end



end

class SportsballTeam

  attr_accessor :team_name,:players,:coach

  def initialize(team_name,players,coach)
    @points = 0
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def add_new_player(new_player)
    @players << new_player
  end

  def find_player(player)

    match = nil
    for name in @players
      if name == player
        match = true
      end
    end
    return match
  end

  def game_result(result)
    if result == 'win'
      @points += 1
    else
      return @points
    end
  end


    # return true unless @players != player
    # for name in @players
    #   if name == player
    #     return true
    #   end
    # end
  # end



  # #getters
  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end




  #setters




  #other





end

class Library

  attr_accessor :book, :title

  def initialize(book)
    @book = book
    # @title = book{:title}

  end

  def get_title
    return book{:title}
  end

end
