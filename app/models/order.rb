# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  address    :text
#  email      :string
#  name       :string
#  pay_type   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Order < ApplicationRecord
    enum pay_type: {
        "Check"          => 0,
        "Credit card"    => 1,
        "Purchase order" => 2
    }
end
