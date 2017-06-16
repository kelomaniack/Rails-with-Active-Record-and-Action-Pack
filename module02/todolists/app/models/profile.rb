class Profile < ActiveRecord::Base
  belongs_to :user

  validates :gender, inclusion: {in: %w(male female)}
  validate :names
  validate :sue_male

  def names
    if first_name.nil? && last_name.nil?
      errors.add(:first_name, "There are should be some names")
    end
  end

  def sue_male
    if gender == "male" && first_name == "Sue"
      errors.add(:gender, "There are shouldn't be a male user with the first_name Sue!")
    end
  end

  def self.get_all_profiles(min, max)
    Profile.where("birth_year BETWEEN ? AND ?", min, max).order(birth_year: :asc)
  end

end
