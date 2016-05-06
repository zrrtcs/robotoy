class RobotarenaController < ApplicationController
  def index
  	@tb = Toybot.summon
  end

  def map
  end
end
