# put your Tourist model here

# a Tourist can visit many Landmarks
# a Tourist can take many Trips

class Tourist

    # Returns the name of given tourist
    attr_accessor :name, :landmark, :trip

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # Return array of all trips taken by Tourist
    def trips
        tourist_trips = Trip.all.select{|each| each.tourist.name == self.name}
        #tourist_trips.collect{|each| each.landmark.name}
        return tourist_trips
    end

    # Return array of all landmarks for given Tourist
    def landmarks
        trips = self.trips
        landmarks = trips.collect{|each| each = each.landmark.name}
        return landmarks
    end

    # Create a new Trip for this tourist to given landmark
    def visit_landmark(landmark)
        new_trip = Trip.new(self, landmark)
        return new_trip
    end

    # Return all Tourist instances
    def self.all
        @@all
    end

    # Returns the first Tourist whose name matches by string input
    def self.find_by_name(name)
        tourist = self.all.find{|each| each.name == name}
        return tourist
    end

end