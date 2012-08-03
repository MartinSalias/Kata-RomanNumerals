require_relative 'roman'

describe "Roman" do

	context "improper values" do
		it "raises error for 0" do
			expect { 0.to_roman }.to raise_error
		end
		it "raises error for negatives" do
			expect { -42.to_roman }.to raise_error
		end
		it "raises error for very high numbers" do
			expect { 4000.to_roman }.to raise_error
		end
	end

	context "proper values" do

		EXAMPLES = [
			[1,"I"],
			[2,"II"],
			[3,"III"],
			[4,"IV"],
			[5,"V"],
			[6,"VI"],
			[7,"VII"],
			[9,"IX"],
			[10,"X"],
			[13,"XIII"],
			[14,"XIV"],
			[15,"XV"],
			[17,"XVII"],
			[19,"XIX"],
			[20,"XX"],
			[24,"XXIV"],
			[39,"XXXIX"],
			[40,"XL"],
			[42,"XLII"]	]

		it "should match all samples" do

			EXAMPLES.each do |int_number,roman_number| 
				int_number.to_roman.should eq(roman_number)
			end
		end
	end
end