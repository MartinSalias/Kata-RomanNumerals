require "test/unit"

require_relative "romanos"

class TestRomanos < Test::Unit::TestCase
  def test_cero
    assert_raise(RuntimeError) { 0.to_roman }
  end
  def test_negativo
    assert_raise(RuntimeError) { -42.to_roman }
  end
  def test_muy_grande
    assert_raise(RuntimeError) { 60.to_roman }
  end

  def test_uno
    assert_equal("I", 1.to_roman)
  end
  def test_dos
    assert_equal("II", 2.to_roman)
  end
  def test_tres
    assert_equal("III", 3.to_roman)
  end
  def test_cuatro
    assert_equal("IV", 4.to_roman)
  end
  def test_cinco
    assert_equal("V", 5.to_roman)
  end

  def test_seis_a_diez
    mirar = {
      6 => "VI",
      7 => "VII",
      8 => "VIII",
      9 => "IX",
      10 => "X",
    }

    for numero, romano in mirar
      assert_equal(romano, numero.to_roman)
    end
  end


  def test_mas_de_diez_y_casos_particulaes
    mirar = {
      11 => "XI",
      14 => "XIV",
      19 => "XIX",
      20 => "XX",
      24 => "XXIV",
      39 => "XXXIX",
      40 => "XL",
      49 => "XLIX",
      50 => "L",
      59 => "LIX",
    }

    for numero, romano in mirar
      assert_equal(romano, numero.to_roman)
    end
  end

end