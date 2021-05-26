require_relative '../classes/cities'
#test Cities class - confirmation method
describe "Cities" do 

    melbourne = Cities.new("Melbourne","home",2000)

    it "should return expected string for confirmation method " do
        expected = "* You have selected Melbourne for your destination"
        expect(melbourne.confirmation).to eq(expected)
    end

end
#test Cities class - display_feature method
describe "Cities" do 

    melbourne = Cities.new("Melbourne","home",2000)

    it "should return expected string for display_feature method " do
        expected = "* What a great choice! home"
        expect(melbourne.display_feature).to eq(expected)
    end

end