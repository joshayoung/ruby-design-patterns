require "pry-byebug"
require_relative "../lib/singleton.rb"
require_relative "../lib/builder.rb"
require_relative "../lib/factory.rb"
require_relative "../lib/decorators/decorator.rb"
require_relative "../lib/adapter.rb"
require_relative "../lib/strategy.rb"
require_relative "../lib/presenter.rb"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
