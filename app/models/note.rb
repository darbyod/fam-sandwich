# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  person_id  :integer
#
class Note < ApplicationRecord
end
