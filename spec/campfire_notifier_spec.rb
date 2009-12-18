require 'spec_helper'

describe CampfireNotifier, ".config" do
  before :each do
    @config = CampfireNotifier.config
  end

  it "should load some configuration settings" do
    @config.should be_instance_of Hash
  end

  it "should set the subdomain option" do
    @config['subdomain'].should_not be_blank
  end

  it "should set the room name" do
    @config['room_id'].should_not be_blank
  end

  it "should set the token" do
    @config['token'].should_not be_blank
  end
end

describe CampfireNotifier, ".speak" do
  before :each do
    CampfireNotifier.stub(:speak).and_return("hello")
  end

  it "should submit a request to the campfire api" do
    CampfireNotifier.should respond_to :speak
  end
end
