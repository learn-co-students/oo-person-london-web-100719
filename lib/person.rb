require "pry"
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness_points_to_be_add)
    @happiness = happiness_points_to_be_add.clamp(0, 10) 
  end

  def hygiene=(hygiene_point_to_be_added)
    @hygiene = hygiene_point_to_be_added.clamp(0, 10) 
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(hygiene)
    #binding.pry
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene=(hygiene)
    @happiness += 2
    self.happiness=(happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
    return "blah blah partisan blah lobbyist"
    end
    if topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      return 'blah blah sun blah rain'
    end
    'blah blah blah blah blah'
  end

end

#
0