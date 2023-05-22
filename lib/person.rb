class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  def initialize name
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=value
    if value > 10
      @happiness = 10
    elsif
        value < 0
        @happiness = 0
    else @happiness = value
    end
  end

  def hygiene=value
    if value > 10
      @hygiene = 10
     elsif
       value < 0
      @hygiene = 0
      else @hygiene = value
    end
  end

  def happy?
    @happiness > 7 ? true:false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid amount
    @amount = amount
    @bank_account += amount
    pp "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene += 4
    pp "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene -= 3
    self.happiness = @happiness += 2
    pp "♪ another one bites the dust ♫"
  end

  def call_friend friend
    friend.happiness += 3
    self.happiness = @happiness += 3
    pp "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation new_person, topic
    if topic == "politics"
      [self, new_person].each { |p| p.happiness -= 2}
      pp "blah blah partisan blah lobbyist"
      elsif
        topic == "weather"
        [self, new_person].each{|p|p.happiness += 1}
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
    end
  end
end
