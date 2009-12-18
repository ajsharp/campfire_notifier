require 'yaml'

require 'rubygems'
require 'httparty'
require 'json'

class CampfireNotifier
  include HTTParty

  def self.config
    @config ||= YAML.load_file(File.expand_path(File.dirname(__FILE__)) + "/../settings.yml")
  end

  base_uri    "http://#{config['subdomain']}.campfirenow.com"
  headers     'Content-type' => 'application/json'
  basic_auth  config["token"], 'x'
  format      :json

  def self.speak(message)
    post "/room/#{config['room_id']}/speak.json", :body => { :message => { :body => message, :type => 'Textmessage' } }.to_json
  end
end
