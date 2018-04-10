ENV['RACK_ENV'] = 'test'

require '../../app.rb'
require 'rspec'
require 'rack/test'

describe 'my sample ruby app' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "says hello" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('hello world')
  end
end
