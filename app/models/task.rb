class Task < ApplicationRecord
  belongs_to :user

  #validate :expiration

  #def expiration
  #  if deadline.present? && deadline < Date.today
  #    notice.add(:deadline, "Can't be in the past")
  #  end
  #end
end
