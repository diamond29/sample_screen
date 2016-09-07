$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'rack/test'
require 'pry-byebug'

module RackHelper
  include Rack::Test::Methods

  def app
    described_class
  end
end

RSpec.configure { |c| c.include RackHelper }
