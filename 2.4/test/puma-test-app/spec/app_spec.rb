require '../spec_helper.rb'

describe 'my sample ruby app' do
  it "says hello" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('hello world')
  end
end
