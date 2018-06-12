require_relative 'automated_init'

context 'Validating a given UUID' do
  context 'A valid UUID is passed in' do
    test 'Returns true' do
      identifier = Identifier::UUID::Controls::Random.example
      validated = Identifier::UUID.uuid?(identifier)

      assert(validated == true)
    end
  end

  context 'An invalid UUID is passed in' do
    test 'Returns false' do
      identifier = Identifier::UUID::Controls::Anomaly.example
      validated = Identifier::UUID.uuid?(identifier)

      assert(validated == false)
    end
  end

  context 'No UUID is passed in' do
    test 'Returns false' do
      identifier = '12345678'
      validated = Identifier::UUID.uuid?(identifier)

      assert(validated == false)
    end
  end

  context 'Blank string is passed in' do
    test 'Returns false' do
      identifier = ''
      validated = Identifier::UUID.uuid?(identifier)

      assert(validated == false)
    end
  end
end
