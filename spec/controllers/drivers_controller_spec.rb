require 'spec_helper'

describe DriversController do

  it 'should create a new driver' do
    expect {
      @driver = Factory.create(:driver)
    }.to change(Driver, :count).by(1)
  end

  it 'should validate firstname, lastname and carrier_company_id' do
    @driver_without_firstname = Factory.build(:driver, :firstname => nil)
    @driver_without_firstname.should_not be_valid

    @driver_without_lastname = Factory.build(:driver, :lastname => nil)
    @driver_without_lastname.should_not be_valid

    @driver_without_carrier_company_id = Factory.build(:driver, :carrier_company_id => nil)
    @driver_without_carrier_company_id.should_not be_valid
  end

end


