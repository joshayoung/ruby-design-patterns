require "pry-byebug"
require_relative "../lib/custom/singleton"
require_relative "../lib/custom/builder"
require_relative "../lib/custom/factory"
require_relative "../lib/custom/decorator"
require_relative "../lib/custom/adapter"
require_relative "../lib/custom/presenter"
require_relative "../lib/custom/strategy"
require "strategy2"
require "decorator2"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
