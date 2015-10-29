require 'lib/fraccion.rb'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def setup
    @f1 = Fraccion.new(8,6)
    @f2 = Fraccion.new(10,4)
    @f3 = Fraccion.new(1,2)
    @f4 = Fraccion.new(4,3)
  end
  def test_objeto
    assert_equal("4/3", @f1.to_s)
    assert_equal("5/2", @f2.to_s)
  end
  def test_aritmetica
    assert_equal("13/3", (@f1+@f2+@f3).to_s)
    assert_equal("1/12", (@f1-@f2*@f3).to_s)
    assert_equal("20/3", (@f1*@f2/@f3).to_s)
  end
  def test_comparacion
    assert_equal("true", (@f1==@f4).to_s)
    assert_equal("true", (@f1!=@f2).to_s)
    assert_equal("false", (@f1>@f2).to_s)
    assert_equal("false", (@f1>=@f2).to_s)
    assert_equal("true", (@f1<@f2).to_s)
    assert_equal("true", (@f1<=@f2).to_s)
  end
  
def test_falloobjeto
  
end

  def test_falloaritmetica
    assert_equal("3/2", (@f1+@f2).to_s, "Suma de 4/3 con 5/2")
  end
  def test_fallocomparacion
        assert_equal("false", (@f1==@f4).to_s)
  end
  
end




