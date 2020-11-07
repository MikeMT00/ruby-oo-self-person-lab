require 'pry'

class Person

    attr_reader :name
    attr_writer :happiness, :hygiene
    attr_accessor :bank_account


    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        #binding.pry
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness
        @happiness.clamp(0, 10)
    end
    
    def hygiene
       @hygiene.clamp(0, 10) 
    end

    def happy?
        return true if @happiness > 7
        false
    end

    def clean?
        return true if @hygiene > 7
        false
    end

    def get_paid(salary)
        @bank_account += salary
        binding.pry
        'all about the benjamins'
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

    def call_friend(friend)
        self.happiness += 3
        #binding.pry
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        #binding.pry
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end
        
    end

end