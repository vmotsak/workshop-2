class AddStudentToSubjectItemNote < ActiveRecord::Migration
  def change
    add_reference :subject_item_notes, :student
  end
end
