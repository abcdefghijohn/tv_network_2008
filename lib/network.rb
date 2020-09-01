class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main = []
    all_characters.each do |char|
      if char.salary >= 500000 && char.name == char.name.upcase
        main << char
      end
    end
    main
  end

  def all_characters
    all_chars = []
    @shows.each do |chars|
      all_chars << chars.characters
    end
    all_chars.flatten!
  end

  #   def characters_by_show
  #     @shows.map do |show|
  #       show.characters
  #     end
  #   end
end
