# Read Only Helpers

Read only helpers provides error managing for Rails 4 Models when we want to flag a model as read only.

## Base usage

Sample rails model with resources

class MovementsJsonFr < ActiveRecord::Base
  include ReadOnlyHelpers
end

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

