# == Schema Information
#
# Table name: people
#
#  id                      :integer          not null, primary key
#  dob                     :date
#  first_name              :string
#  last_name               :string
#  nickname                :string
#  person_notes            :text
#  user_email              :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  primary_relationship_id :integer
#
class Person < ApplicationRecord
end
