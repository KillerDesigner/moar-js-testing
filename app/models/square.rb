class Square < ActiveRecord::Base
  attr_accessible :width, :height

  validate do
    errors.add(:length, "Width must equal height") unless width == height
  end

  def length
    self.width
  end

  def area
    self.length ** 2
  end
end
