require "ex47/game.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase

  def test_room()
    gold = Room.new("GoldRoom",
                    """This room has gold in it you can grab. 
    There's a door to the north.""")
    
    assert_equal("GoldRoom", gold.name)
    assert_equal({}, gold.paths)
  end

  def test_room_path()
    center = Room.new("Center", "This room in the center.")
    north = Room.new("North", "This room in the north")
    south = Room.new("South", "This room in the south")

    center.add_paths({"north"=> north, "south"=> south})
    
    assert_equal(north, center.go("north"))
    assert_equal(south, center.go("south"))
  end

  def test_map()
    start = Room.new("Start", "This is start room")
    west = Room.new("West", "This is west room")
    down = Room.new("Down", "This is down room")

    start.add_paths({"west"=> west, "down"=> down})
    west.add_paths({"east"=> start})
    down.add_paths({"up"=> start})

    assert_equal(west, start.go("west"))
    assert_equal(start, start.go("west").go("east"))
    assert_equal(start, start.go("down").go("up"))
  end
end
