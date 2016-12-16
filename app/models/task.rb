class Task < ApplicationRecord
  belongs_to :user

  validate :expiration

  def expiration
    if deadline.present? && deadline < Date.today
      errors.add(:deadline, "Can't be in the past")
    end
  end
end
