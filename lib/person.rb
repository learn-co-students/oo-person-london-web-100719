class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness.clamp(0,10)
  end

  def hygiene=(hygiene)
    @hygiene = hygiene.clamp(0,10)
  end
   
  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  
  def take_bath
    @hygiene += 4
    self.hygiene=(hygiene)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
     @happiness += 2
     @hygiene -= 3
     self.hygiene=(hygiene)
     self.happiness=(happiness)
     return  "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif
      topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
