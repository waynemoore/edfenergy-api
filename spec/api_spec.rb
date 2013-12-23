require 'spec_helper'

describe Edfenergy::Api do

  let(:api) { Edfenergy::Api.new }

  context "authentication" do

    it "succeeds" do
      VCR.use_cassette('successful_login') do
        api.login('foo@bar.com', 'password').should == true
      end
    end

    it "fails" do
      VCR.use_cassette('failed_login') do
        api.login('foo@bar.com', 'password').should == false
      end
    end

  end

  context "data" do

    it "returns the meter reading" do
      VCR.use_cassette('meter_reading') do
        api.meter_reading.should == 12345
      end
    end

  end

end