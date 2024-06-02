require "test_helper"

class DogsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/dogs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Dog.count, data.length
  end

  test "create" do
    assert_difference "Dog.count", 1 do
      post "/dogs.json", params: {name: "Boxer", size: "medium", origin: "Germany"}
      assert_response 200
    end
  end
end
