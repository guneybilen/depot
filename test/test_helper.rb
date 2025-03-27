ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all
     self.file_fixture_path = Rails.root.join("test/fixtures/files")
    # Add more helper methods to be used by all tests here...
    
    def file_fixture_upload(filename, mime_type = "application/octet-stream")
      file_path = file_fixture(filename) # Get the file path from the fixture
      Rack::Test::UploadedFile.new(file_path, mime_type)
    end
  end
end
