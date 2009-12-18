$:.unshift(File.dirname(__FILE__) + '/../lib')
$:.unshift(File.dirname(__FILE__))


require 'rubygems'
require 'spec'
require 'spec/autorun'

require 'fakeweb'

require 'campfire_notifier'


fixtures = File.dirname(File.expand_path(__FILE__)) + "/fixtures"

FakeWeb.allow_net_connect = false
FakeWeb.register_uri(:get, "http://example.campfirenow.com/rooms.json", :body => File.read("#{fixtures}/rooms.json"))

