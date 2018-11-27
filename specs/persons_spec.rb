require('minitest/autorun')
require('minitest/rg')

require_relative('../person.rb')

class PersonTest < MiniTest::Test
  def setup
    @person_1 = Person.new("Mark", 46)
    @person_2 = Person.new("Davide", 29)
  end

  def test_get_person_name

    assert_equal("Mark", @person_1.name)
  end
end
