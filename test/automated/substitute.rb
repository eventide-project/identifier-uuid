require_relative 'automated_init'

context "Substitute" do
  context "No assigned UUID" do
    uuid = Identifier::UUID::Random::Substitute.build

    context "UUID" do
      uuid_val = uuid.get
      is_uuid = Identifier::UUID.uuid?(uuid_val)

      test "Is a Zero UUID" do
        assert(uuid_val == Identifier::UUID.zero)
      end
    end
  end

  context "Assigned UUID" do
    uuid = Identifier::UUID::Random::Substitute.build

    context "UUID" do
      test "Is the assigned value" do
        uuid_val = 'some uuid'
        uuid.set(uuid_val)

        assert(uuid.get == uuid_val)
      end
    end
  end
end
