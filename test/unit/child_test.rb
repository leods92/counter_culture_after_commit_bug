require 'test_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :deletion

class ChildTest < ActiveSupport::TestCase
  self.use_transactional_fixtures = false

  test "counter_culture" do
    DatabaseCleaner.start

    school = School.create

    parent = Parent.new
    child = parent.children.build
    child.school = school

    parent.special_save

    assert school.reload.children_count == 1

    DatabaseCleaner.clean
  end
end
