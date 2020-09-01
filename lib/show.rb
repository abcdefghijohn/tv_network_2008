class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end

  def actors
    names = []
    @characters.each do |character|
      names << character.actor
    end
    names
  end

  def highest_paid_actor
    actors_by_salary.last.actor
  end
end

def actors_by_salary
  @characters.sort_by do |character|
    character.salary
  end
end
