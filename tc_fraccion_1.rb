require './fraccion.rb'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def setup
    @f1 = Fraccion.new(8,6)
    @f2 = Fraccion.new(10,4)
    @f3 = Fraccion.new(1,2)
  end
  def tear_down
    # nothing
  end
  def test_simple
    assert_equal("(4,3)", @f1.to_s)
    assert_equal("(5,2)", @f2.to_s)
     assert_equal("(13,3)", (@f1+@f2+@f3).to_s)
     assert_equal("(-7,12)", (@f1-@f2*@f3).to_s)
     assert_equal("(20,3)", (@f1*@f2/@f3).to_s)
  end
  def test_type_check
    assert_raise(RuntimeError) {Fraccion.new('4','3')}
  end
  def test_failure
    assert_equal("(6,4)", (@f1+@f2).to_s, "Suma de 4/3 con 5/2")
  end
end

TestPoint.test_simple


