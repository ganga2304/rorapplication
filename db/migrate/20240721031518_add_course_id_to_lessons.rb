class AddCourseIdToLessons < ActiveRecord::Migration[7.1]
  def change
    add_column :lessons, :course_id, :integer
  end
end
