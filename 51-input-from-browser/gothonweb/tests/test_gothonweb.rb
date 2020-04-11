require "./bin/app.rb"
require "test/unit"
require "rack/test"

class TestGothons < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_default_path
    get "/"
    assert_equal "Hello World", last_response.body
  end

  def test_hello_form
    get "/hello"
    assert last_response.ok?
    assert last_response.body.include?("A Greeting")
  end

  def test_index_path
    post "/hello", params = {:name => "Hank", :greeting => "Hello"}

    assert last_response.ok?
    assert last_response.body.include?("I just want to say")
  end

end
