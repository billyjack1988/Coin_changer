
require "minitest/autorun"
require_relative "coin_changer.rb"

class Coin_changer_test < Minitest::Test

    def test_1_equal_1_test
		assert_equal(1,1)
	end

    def test_with_marv_on_one_penny
        assert_equal({quater: 0, dime: 0, nickel: 0, penny: 1}, coin(1))
    end 

    def test_for_nickel 
        assert_equal({quater: 0, dime: 0, nickel: 1, penny: 0}, coin(5))
    end

    def test_for_dime 
        assert_equal({quater: 0, dime: 1, nickel: 0, penny: 0}, coin(10))
    end

    def test_for_quater 
        assert_equal({quater: 1, dime: 0, nickel: 0, penny: 0}, coin(25))
    end

    def test_for_75_cents 
        assert_equal({quater: 3, dime: 0, nickel: 0, penny: 0}, coin(75))
    end 

    def test_for_automatic_changer
        assert_equal({quater: 25}, coin_2(25))
    end

    def test_for_78
        assert_equal({quater: 25, penny: 1}, coin_2(26))
    end
    
end
