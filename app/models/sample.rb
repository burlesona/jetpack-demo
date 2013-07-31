class Sample < ActiveRecord::Base
  attr_accessor :email, :url, :phone, :password, :time_zone
  belongs_to :user
  has_many :widgets
  has_and_belongs_to_many :companies
end
