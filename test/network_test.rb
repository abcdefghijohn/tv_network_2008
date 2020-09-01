require "minitest/autorun"
require "minitest/pride"
require "./lib/character"
require "./lib/show"
require "./lib/network"

class NetworkTest < Minitest::Test
  def test_it_exists_and_has_attributes
    nbc = Network.new("NBC")

    assert_instance_of Network, nbc
    assert_equal "NBC", nbc.name
    assert_equal [], nbc.shows
  end
end
