class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.order_by_grade
    Student.order('grade DESC')
  end

  def self.highest_grade
    Student.all.max_by {|student| student.grade}
  end

end
