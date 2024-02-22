# RaiseDeprecationWarnings

Simple gem to replace ActiveSupport warnings to raise an error instead.

This gem extend the actiesupport gem to raise an error on deprecation warning.

To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

TODO: Replace `raise_deprecation_warnings` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

    $ bundle add raise_deprecation_warnings

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install raise_deprecation_warnings

## Usage

You probably don't want this in production. but on CI, it can help to keep a branch up to date and clear out warnings after you upgrade all dependencies.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mathieujobin/raise_deprecation_warnings.
