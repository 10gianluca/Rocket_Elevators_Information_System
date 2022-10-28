require 'test_helper'

class QuotesControllerTest < ActionDispatch::IntegrationTest
  test "should get requestQuote" do
    get quotes_requestQuote_url
    assert_response :success
  end

end
