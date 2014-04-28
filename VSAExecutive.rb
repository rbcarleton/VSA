# A VSA executive class, or system 5.
#
# -Policy decisions within the system as a whole
# -Balancing demands from different parts of the system
# -Steering the system as a whole
class VSAExecutive
    
    # setters and getters
    
    ## VSA Scheduling Interval
    attr_reader :interval
    attr_writer :interval
    
    ## VSA name
    attr_reader :name
    attr_writer :name

    def initialize(interval)
        @cost_center = false
        @operations_compare = true
    end
end