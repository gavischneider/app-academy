# Install gems: gem install bundler
# Run rspec: bundle exec rspec spec/0_room_spec.rb 

class Room

    def initialize(cap)
        @capacity = cap
        @occupants = []
    end

    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    def full?
        if @occupants.length() == @capacity
            return true
        else
            return false
        end
    end

    def available_space
        @capacity - @occupants.length()
    end

    def add_occupant(name)
        if self.full?
            return false
        else
            @occupants << name
            return true
        end
    end

end
