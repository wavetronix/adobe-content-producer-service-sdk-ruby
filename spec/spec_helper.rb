$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'dps'

require 'minitest/autorun'
require 'vcr'
# require 'webmock/minitest'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures'
  # c.hook_into :webmock
  c.default_cassette_options = { record: :once }
end