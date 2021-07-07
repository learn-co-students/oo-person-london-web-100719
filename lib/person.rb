class Person
    attr_accessor :bank_account
    attr_reader :name
    attr_writer :happiness, :hygiene
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness 
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0 
            @happiness = 0
        else 
            @happiness
        end 
    end 

    def hygiene
        if @hygiene > 10 
            @hygiene = 10
        elsif @hygiene < 0 
            @hygiene = 0 
        else 
            @hygiene
        end 
    end 


    def happy?
        if @happiness > 7 
            true 
        else 
            false 
        end 
    end 

    def clean? 
        if @hygiene > 7 
            true 
        else false 
        end 
    end 

    def get_paid(salary)
        self.bank_account += salary 
        "all about the benjamins"
    end 

    def take_bath 
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end 

    def call_friend(new_friend)
        self.happiness += 3
        new_friend.happiness += 3
        "Hi #{new_friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(example, topic)
        if topic == "politics"
            example.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            example.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end 
    end 

end 