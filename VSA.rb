class VSA

    # setters and getters

    ## Actuality
    attr_reader :actuality
    attr_writer :actuality

    ## Capability
    attr_reader :capability
    attr_writer :capability

    ## Potentiality
    attr_reader :potentiality
    attr_writer :potentiality

    ## Set the cost center boolean. With a profit center, more is better.
    ## With a cost center less is better.  This boolean is used to determine
    ## how latency, performance and productivity are calculated. See the end
    ## of chapter 11 in: 1972, Stafford Beer, Brain of the Firm

    attr_reader :cost_center
    attr_writer :cost_center

    
    def initialize(actuality, capability, potentiality)
        @actuality = actuality
        @capability = capability
        @potentiality = potentiality
        @cost_center = false
    end
 
    #Calculate the latency
    def latency
        if cost_center == true
            return potentiality / capability
        else
            return capability / potentiality
        end
    end
    
    #Calculate performance
    def performance
        if cost_center == true
            return potentiality / actuality
        else
            return actuality / potentiality
        end
    end
    
	#Calculate productivity
    def productivity
        if cost_center == true
            return capability / actuality
        else
            return actuality / capability
        end
	end
    
end
