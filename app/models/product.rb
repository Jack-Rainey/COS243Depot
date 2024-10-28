# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  description :text
#  image_url   :string
#  price       :decimal(8, 2)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
	validates :title, :description, :image_url, presence: true
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with:    %r{\.(gif|jpg|png|jpeg)\z}i,
		message: 'must be a URL for GIF, JPEG, or PNG image.'
	}
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }

	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item

	#...

	private

	# Ensure that there are no lines referencing this product
	def ensure_not_referenced_by_any_line_item
		unless line_items.empty?
			errors.add(:base, 'Line Items present')
			throw :abort
		end
	end
end
