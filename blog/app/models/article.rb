class Article < ApplicationRecord
  # there is not much here, but
  #  it is inherited from ApplicationRecord, which has CRUD

  # Active Record Validation can have more complicated rule
  validates :title, presence: true,
                    length: { minimum: 5}
end
