# Read Only Helpers

Read only helpers provides error managing for Rails 4 Models when we want to flag a model as read only.

## Base usage

Sample rails model with resources

```
class MovementsJsonFr < ActiveRecord::Base
  include ReadOnlyHelpers
end
```

## Using RSpec Matchers

Read only helpers provides 2 rspec matchers to easily test that a Active Record model is really read only.

1. Setting up RSpec
```
spec_helper.rb
RSpec.configure do |config|
  config.include(ReadOnlyHelpers::Matchers)
end
```

2. Using in a Rspec test

Testing the class instance 
```
it 'should give true on read only instance of class' do
  expect(ReadOnlyClass).to be_read_only_instance
end
```
Testing the class methods
```
it 'should give true on read only on object' do
  item = ReadOnlyClass.new
  expect(item).to be_read_only_class
end
```

## Contributing to Read Only Helpers

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Main contributors

Mathieu Rheaume <mrheaume@cortex.bz>

## Copyright

Copyright (c) 2015 Cortex. See LICENSE.txt for
further details.

