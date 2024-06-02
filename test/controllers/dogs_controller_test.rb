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

  test "show" do
    get "/dogs/#{Dog.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "size", "origin", "created_at", "updated_at"], data.keys
  end

  test "update" do
    dog = Dog.first
    patch "/dogs/#{dog.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
end
