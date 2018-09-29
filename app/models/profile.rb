class Profile < ApplicationRecord
  include ActiveModel::Model
  attr_accessor :year, :month, :day

  before_save :prepare_save

  belongs_to :user
  # has_many :travelplans, dependent: :destroy
  # has_many :relationlinks, dependent: :destroy
  # has_many :SNSaccounts, dependent: :destroy
  # has_many :profile_tags, dependent: :destroy
  # has_many :tags, through: :profile_tags, dependent: :destroy
  # has_one :address, dependent: :destroy

  private
  def prepare_save
    birth = (params[:year].to_s + params[:month].to_s + params[:day]).to_date
  end
end
