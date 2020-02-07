class User < ApplicationRecord
  has_secure_password
  belongs_to :cohort
  has_many :user_projects
  has_many :projects, through: :user_projects
  validates :username, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: true
  accepts_nested_attributes_for :projects
end
