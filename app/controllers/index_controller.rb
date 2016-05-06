class IndexController < ApplicationController
  def robotarena
  	@tb =  Toybot.new unless Toybot.any?
  	@tb.placement 0, 0, "NORTH"
  end
end
