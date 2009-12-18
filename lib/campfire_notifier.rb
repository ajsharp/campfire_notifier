require 'yaml'

require 'rubygems'
require 'httparty'
require 'json'

class CampfireNotifier
  include HTTParty

  headers     'Content-type' => 'application/json'
  format      :json

  def self.speak(message)
    base_uri    "http://#{config['subdomain']}.campfirenow.com"
    basic_auth  config["token"], 'x'
    post "/room/#{config['room_id']}/speak.json", :body => { :message => { :body => message, :type => 'Textmessage' } }.to_json
  end
end
