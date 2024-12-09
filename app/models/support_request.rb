# == Schema Information
#
# Table name: support_requests
#
#  id         :integer          not null, primary key
#  body       :text
#  email      :string
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#
# Indexes
#
#  index_support_requests_on_order_id  (order_id)
#
# Foreign Keys
#
#  order_id  (order_id => orders.id)
#
class SupportRequest < ApplicationRecord
    belongs_to :order, optional: true
end
