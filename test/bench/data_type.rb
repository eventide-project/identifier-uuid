require_relative 'bench_init'

context "Data Type" do
  context "Getting a UUID" do
    uuid = Identifier::UUID::Random.get
    test "UUIDs are strings" do
      assert(uuid.is_a? String)
    end
  end
end
