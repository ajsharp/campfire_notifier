require 'spec_helper'

describe CampfireNotifier, ".config" do
  it "should load some configuration settings" do
    CampfireNotifier.config.should be_instance_of Hash
  end

  it "should accept a string filename from which to load config options" do
    YAML.should_receive(:load_file).with(File.expand_path("filename.yml")).and_return(mock_settings)
    CampfireNotifier.config("filename.yml")
  end

  it "should accept an optional hash of config paramters" do
    lambda { 
      CampfireNotifier.config({})
    }.should_not raise_error(ArgumentError)
  end

  context "when passing in a hash of options" do
    it "should allow a hash to be passed in" do
      CampfireNotifier.config({'room_id' => 1})['room_id'].should == 1
    end

    it "should not try to load a file if hash passed in" do
      YAML.should_not_receive(:load_file)
      CampfireNotifier.config({})
    end
  end

  context "when loading config options from a file" do
    before :each do
      YAML.stub(:load_file).with(File.expand_path("~/.campfire_notifier.yml")).and_return(mock_settings)
      CampfireNotifier.config("~/.campfire_notifier.yml")
    end

    it "should attempt to load the ~/.campfire_notifier.yml by default" do
      YAML.should_receive(:load_file).with(File.expand_path("~/.campfire_notifier.yml"))
      CampfireNotifier.config("~/.campfire_notifier.yml")
    end

    it "should set the subdomain option" do
      CampfireNotifier.config['subdomain'].should_not be_blank
    end

    it "should set the room name" do
      CampfireNotifier.config['room_id'].should_not be_blank
    end

    it "should set the token" do
      CampfireNotifier.config['token'].should_not be_blank
    end
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

