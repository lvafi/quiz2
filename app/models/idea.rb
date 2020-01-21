class Idea < ApplicationRecord
  #generated with rails g model idea title:string body:text
  belongs_to :user
end
