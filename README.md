# identifier_uuid

UUID identifier generator.

## Synopsis

```ruby
require 'identifier/uuid'

uuid = Identifier::UUID.random # "df95804e-02fc-490a-a946-e7304942b09e"

string = "My UUID v4 is: #{uuid}"

Identifier::UUID.parse(string) # "df95804e-02fc-490a-a946-e7304942b09e"
```

Creates and parses [UUID v4](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_4_(random)) strings, for the purpose of being used as identifiers.

### Configure

This library was written according to [The Doctrine of Useful Objects](http://docs.eventide-project.org/user-guide/useful-objects.html). As such, it can be configured as either `:identifer` or `:uuid`, and has a useful inert substitute.

```ruby
require 'identifier/uuid'

class MyClass
  dependency :identifier, Identifier::UUID::Random

  def self.build
    instance = new

    Identifier::UUID::Random.configure(instance)

    instance
  end
end

instance = MyClass.new

instance.identifier.get # nil
instance.identifier.set("my string")
instance.identifier.get # "my string"

operational = MyClass.build
operational.identifier.get # "df95804e-02fc-490a-a946-e7304942b09e"
```

## License

The `identifier_uuid` library is released under the [MIT License](https://github.com/obsidian-btc/identifier-uuid/blob/master/MIT-License.txt).
