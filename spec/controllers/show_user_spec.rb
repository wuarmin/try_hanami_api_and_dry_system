require "controllers/show_user"

describe Controllers::ShowUser do
  it "is successful" do
    response = subject.call({ id: 1 })

    expect(response[0]).to be(200)
    expect(response[1]["Content-Type"]).to eq("application/json; charset=utf-8")
    expect(response[2][0]).to eq("{\"id\":1,\"email\":\"email1@test.com\",\"first_name\":\"Chuck\",\"last_name\":\"Norris\"}")
  end
end
