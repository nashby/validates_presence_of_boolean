# validates_presence_of_boolean

> If you want to validate the presence of a boolean field (where the real values
are true and false), you will want to use
`validates_inclusion_of :field_name, :in => [true, false]`.
(c) [ActiveModel](https://github.com/rails/rails/blob/8381d398cedf3e95fb073b8110d80f636cff449c/activemodel/lib/active_model/validations/presence.rb#L22)

Not cool.

So:

```ruby
class User < ActiveRecord::Base
  validates :admin, not_nil: true
end
```

or

```ruby
class User < ActiveRecord::Base
  validates_presence_of_boolean :admin
end
```

Cool.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
