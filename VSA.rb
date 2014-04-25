class VSA

    # setters and getters
    attr_reader :actuality
    attr_writer :actuality

    attr_reader :capability
    attr_writer :capability
    
    attr_reader :potentiality
    attr_writer :potentiality

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