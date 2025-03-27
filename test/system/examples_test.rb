require "application_system_test_case"

class ExamplesTest < ApplicationSystemTestCase
   test "visiting the index" do
     visit store_index_path
  
     assert_selector "h1", text: "Your Pragmatic Catalog"
   end
end
