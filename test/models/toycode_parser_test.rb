require 'test_helper'

class ToycodeParser < ActiveSupport::TestCase
  def setup
    @tp = ToycodeParser.new <<-CODE
      Jokowi itu presiden
      Najib itu bukan populer
    CODE
  end

  test "toycodeparser has an array of toycode lines" do
    byebug
    assert true, @tp.toycodes.kind_of?(Array)
  end
end
