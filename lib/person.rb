class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        @happiness = @happiness.clamp(0,10)
    end

    def hygiene
        @hygiene = @hygiene.clamp(0,10)
    end

    def happy?
        @happiness < 8 ? false : true
    end

    def clean?
        @hygiene < 8 ? false : true
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return  "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return  "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
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