# put your Trip model here

# a Trip belongs to a Tourist
# a Trip belongs to a Landmark

class Trip

    attr_accessor :trip, :tourist, :landmark

    @@all = []

    def initialize(tourist, landmark)
        @tourist, @landmark = tourist, landmark
        @@all << self
    end

    # Return array of all trips
    def self.all
        @@all
    end

end