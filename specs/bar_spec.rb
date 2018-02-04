require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../songs.rb')
require_relative ('../guest.rb')
require_relative ('../room.rb')
require_relative ('../bar.rb')

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new("Car-A-okay")


  end

  def test_bar_has_name
    assert_equal("Car-A-okay", @bar.name)
  end

  

end
