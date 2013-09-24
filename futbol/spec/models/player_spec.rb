# == Schema Information
#
# Table name: players
#
#  id             :integer          not null, primary key
#  first_name     :string(255)
#  last_name      :string(255)
#  jersey_number  :integer
#  height         :string(255)
#  weight         :string(255)
#  date_of_birth  :datetime
#  place_of_birth :string(255)
#  position_id    :integer
#  created_at     :datetime
#  updated_at     :datetime
#  club_id        :integer
#

require 'spec_helper'

describe Player do
  before { @player = FactoryGirl.create(:player)}

  subject {@player}

  it {should be_valid }
  it {should respond_to(:first_name)}
  it {should respond_to(:last_name)}
  it {should respond_to(:jersey_number)}
  it {should respond_to(:height)}
  it {should respond_to(:weight)}
  it {should respond_to(:date_of_birth)}
  it {should respond_to(:place_of_birth)}
  it { should respond_to(:position)}
  it { should respond_to(:club)}

  describe "player validations" do
  	context "when player first name is blank" do
  		before { @player.first_name = ""}
  		it { should_not be_valid}
  	end

  	context "when player last name is blank" do
  		before { @player.last_name = ""}
  		it { should_not be_valid}
  	end

  	context "when player weight is blank" do
  		before { @player.weight = ""}
  		it { should_not be_valid}
  	end

  	context "when player height is blank" do
  		before { @player.height = ""}
  		it { should_not be_valid}
  	end

  	context "when jersey_number is blank" do
  		before { @player.jersey_number = ""}
  		it { should_not be_valid}

  		describe "when jersey_number not a number" do
  			before { @player.jersey_number = "y"}
  			it {should_not be_valid}
  		end
  	end


  	
 	
  end
end
