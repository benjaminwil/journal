ENV['RAILS_ENV'] = 'test'

require File.expand_path('../../../dummy/config/environment.rb', __FILE__)

ActiveRecord::Migrator.migrations_paths = [File.expand_path('../../../dummy/db/migrate', __FILE__)]
ActiveRecord::Migrator.migrations_paths << File.expand_path('../../db/migrate', __FILE__)

require 'rails/test_help'

Minitest.backtrace_filter = Minitest::BacktraceFilter.new

if ActiveSupport::TestCase.respond_to?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path('../fixtures', __FILE__)
  ActionDispatch::IntegrationTest.fixture_path = ActiveSupport::TestCase.fixture_path
  ActiveSupport::TestCase.file_fixture_path = ActiveSupport::TestCase.fixture_path + '/files'
  ActiveSupport::TestCase.fixtures :all
end
