require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup 
    @song1 = Song.new("Bon Jovi", "Livin on a prayer")

  end 

  def test_get_artist
    assert_equal("Bon Jovi", @song1.artist)
  end 

  def test_get_title
    assert_equal("Livin on a prayer", @song1.title)
  end

end 