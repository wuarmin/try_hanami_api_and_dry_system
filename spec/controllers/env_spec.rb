require "controllers/env"

describe Controllers::Env do
  it "is successful" do
    response = subject.call({})

    expect(response[0]).to be(200)
    expect(response[1]["Content-Type"]).to eq("application/json; charset=utf-8")
    expect(response[2][0]).to eq("{\"env\":\"test\"}")
  end
end
