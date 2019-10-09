# your code goes here
# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_writer :happiness, :hygiene

    def initialize(name, bank_account = 25,  happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end 

    def happiness
        @happiness = @happiness.clamp(0, 10)
    end 

    def hygiene
        @hygiene = @hygiene.clamp(0, 10)
    end 

    def clean?
        @hygiene > 7 ? true : false
    end 

    def happy?
        @happiness > 7 ? true : false
    end 

    def get_paid(salary_amount)
        @bank_account += salary_amount
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        #self.hygiene(@hygiene) += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end  

    def work_out 
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end     

end 