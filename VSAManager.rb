# A VSA manager class, or system 3.
#
# -Establishes the rules, resources and responsibilities of operations
# -Communicates with Planner and Executive
# -Sends audit messages to operations
# -Accepts algedonic alerts from operations
#
class VSAManager
    
    # setters and getters
    
    ## Cost center boolean
    attr_reader :cost_center
    attr_writer :cost_center
    
    ## VSA name
    attr_reader :operations_compare
    attr_writer :operations_compare
    
    def initialize
    end
    
end