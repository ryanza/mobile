require 'spec_helper'

describe MobilesController, type: :controller do
  describe '#is_mobile_device?' do
    it "should return true if the device is a mobile" do
      request.stub!(:user_agent).and_return('iphone')
      get :index

      subject.is_mobile_device?.should be_true
    end

    it "should return false if the device is NOT a mobile" do
      request.stub!(:user_agent).and_return('iampc')
      get :index

      subject.is_mobile_device?.should be_false
    end
  end

  describe "#is_device?" do
    it "should check for a specific device and return true if device is detected" do
      request.stub!(:user_agent).and_return('iphone')
      get :index

      subject.is_device?("iphone").should be_true
    end

    it "should check for a specific device and return false if device is NOT detected" do
      request.stub!(:user_agent).and_return('iphone')
      get :index

      subject.is_device?("blackberry").should be_false
    end
  end
end
