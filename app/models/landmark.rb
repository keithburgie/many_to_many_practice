# put your Landmark model here

# a Landmark can be visited by many Tourists
# a Landmark can have many Trips

class Landmark

    attr_accessor :name, :city, :tourist, :trip

    @@all = []

    def initialize(name, city)
        @name, @city = name, city
        @@all << self
    end

    # Return array of all landmarks
    def self.all
        @@all
    end

    # return an array of all landmarks for the city
    def self.find_by_city(city)
        city = Landmark.all.select {|each| each.city == city}
        landmarks = city.collect{|each| each = each.name}
        return landmarks
    end

    # Return array of all trips taken to a given landmark
    def trips
        trips_to_landmark = Trip.all.select{|each| each.landmark.name == self.name}
        return trips_to_landmark
    end

    # Return array of all tourists at a given landmark
    def tourists
        landmark = Trip.all.select{|each| each.landmark.name == self.name}
        tourists = landmark.collect{|each| each = each.tourist.name}
        return tourists
    end

end