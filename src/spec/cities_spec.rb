require_relative '../classes/cities'
#test Cities class - confirmation method
describe "Cities" do 

    melbourne = Cities.new("Melbourne","home",2000)

    it "should return expected string for confirmation method " do
        expected = "\n* You have selected Melbourne for your destination\n"
        expect(melbourne.confirmation).to eq(expected)
    end

end
#test Cities class - display_feature method
describe "Cities" do 

    melbourne = Cities.new("Melbourne","home",2000)

    it "should return expected string for display_feature method " do
        expected = "\n* What a great choice! home\n"
        expect(melbourne.display_feature).to eq(expected)
    end

end