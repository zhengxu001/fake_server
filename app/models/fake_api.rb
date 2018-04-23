class FakeApi < ApplicationRecord
	belongs_to :user, dependent: :destroy
end
