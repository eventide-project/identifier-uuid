require_relative 'automated_init'

context 'Validating a given UUID' do
  context 'A valid UUID is passed in' do
    test 'Valid' do
      identifier = Identifier::UUID::Controls::Random.example
      validated = Identifier::UUID.uuid?(identifier)

      assert(validated)
    end
  end

  context 'An invalid UUID is passed in' do
    test 'Not valid' do
      identifier = Identifier::UUID::Controls::Anomaly.example
      validated = Identifier::UUID.uuid?(identifier)

      refute(validated)
    end
  end

  context 'No UUID is passed in' do
    test 'Not valid' do
      identifier = '12345678'
      validated = Identifier::UUID.uuid?(identifier)

      refute(validated)
    end
  end

  context 'Blank string is passed in' do
    test 'Not valid' do
      identifier = ''
      validated = Identifier::UUID.uuid?(identifier)

      refute(validated)
    end
  end
end
