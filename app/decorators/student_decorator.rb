class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    format("%.2f", subject_item.subject_item_notes.average(:value) || 0)
  end
end
