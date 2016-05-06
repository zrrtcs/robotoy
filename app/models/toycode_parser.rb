class ToycodeParser
	attr_accessor :text, :toycodes
	def initialize(text)
	  @text = text
	  @toycodes = text.split.map(&:strip)
	end
end