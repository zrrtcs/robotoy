class Toybot < ActiveRecord::Base 
	# attr_accessor :pos_x, :pos_y, :face

	def create_record
		tb = Toybot.create
	end
	# def initialize(pos_x=0, pos_y=0, face="NORTH")
	#   @pos_x, @pos_y, @face = pos_x, pos_y, face

	# end
	# def initialize(pos_x, pos_y, faceing)
	#   @pos_x, pos_y = pos_x, pos_y
	# end
	def placement x, y, face
        @pos_x = x
        @pos_y = y
        @face = face
    end
    
    def fallen?
        @pos_x >= 5 || @pos_x < 0 || @pos_y >= 5 || @pos_y < 0
    end
    
    def facing face
        false unless ["NORTH", "EAST", "SOUTH", "WEST"].include? face
        @face = face
    end
    
    def right
        case @face
        when "NORTH"
            @face = "EAST"
        when "EAST"
            @face = "SOUTH"
        when "SOUTH"
            @face = "WEST"
        when "WEST"
            @face = "NORTH"
        else
            false
        end
    end
    
    def left
        case @face
        when "NORTH"
            @face = "WEST"
        when "WEST"
            @face = "SOUTH"
        when "SOUTH"
            @face = "EAST"
        when "EAST"
            @face = "NORTH"
        else
            false
        end
    end
    
    def move
        case @face
        when "NORTH"
            @pos_y += 1
        when "WEST"
            @pos_x -= 1
        when "SOUTH"
            @pos_y -= 1
        when "WEST"
            @face = "NORTH"
        else
            false
        end
    end
end