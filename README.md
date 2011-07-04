# SpecCoverage

This formatter loads SimpleCov a code coverage reporting tool for Ruby 1.9. SimpleCov already does a good job in making it really easy to configure and load itself, but even good efforts can be improved upon.

The only problem is that you'll need to have something like a spec_helper to load it. You might not have this or you might find it ugly having to resort to environment variables to turn it off or on.

## Installation

If you are using bundler, then don't forget to add simplecov to your `Gemfile`:

    gem 'simplecov', :group => :test, :require => false


## Usage

With this formatter, SimpleCov will start, and it will load a `.coverage` file in which you can add ruby code to configure SimpleCov in a non-obtrusive way. Configuration for a typical Rails app will look like this:

    SimpleCov.start 'rails'

This formatter doesn't have any output, so you'll probably want to add another formatter. I prefer the documentation (if the number of specs is limited) or Fuubar formatter (for big spec suites):

    rspec spec -f SpecCoverage -fd
    rspec spec -f SpecCoverage -f Fuubar


More information on SimpleCov can be found [here](https://github.com/colszowka/simplecov).

More information on RSpec formatters can be found [here](http://relishapp.com/rspec/rspec-core/v/2-6/dir/command-line/format-option).
