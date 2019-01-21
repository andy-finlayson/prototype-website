require File.expand_path '../../Server.rb', __FILE__
require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

describe 'Prototype App' do
  include Rack::Test::Methods

  def app() Sinatra::Application end

  it 'displays the homepage' do
    get '/'
    expect(last_response.status).to eq 200
  end
  
  it 'includes the text' do
    get '/'
    expect(last_response.body).to include 'A prototype is an early sample, model'
  end
end