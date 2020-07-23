require_relative 'automated_init'

context "Random Identifier" do
  context "Class interface" do
    uuid = Identifier::UUID::Random.get

    test "Random UUID" do
      assert(Identifier::UUID.uuid?(uuid))
    end
  end

  context "Instance interface" do
    uuid = Identifier::UUID::Random.new.get

    test "Random UUID" do
      assert(Identifier::UUID.uuid?(uuid))
    end
  end

  context "Root interface" do
    uuid = Identifier::UUID.random

    test "Random UUID" do
      assert(Identifier::UUID.uuid?(uuid))
    end
  end
end
