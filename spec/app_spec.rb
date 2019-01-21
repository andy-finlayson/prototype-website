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
    expect(last_response.body).to include 'A prototype is an early sample, model, or release of a product built to test a concept or process or to act as a thing to be replicated or learned from.
           It is a term used in a variety of contexts, including semantics, design, electronics, and software programming.
           A prototype is generally used to evaluate a new design to enhance precision by system analysts and users. 
           Prototyping serves to provide specifications for a real, working system rather than a theoretical one. 
           In some design workflow models, creating a prototype (a process sometimes called materialization) is the step between the formalization and the evaluation of an idea.'
  end
end