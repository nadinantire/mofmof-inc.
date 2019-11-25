class Property < ApplicationRecord
    
    
    validate :diff
    
    def diff
if minut <= minut1
    errors.add(:How_many_minutes_walk, "pls check again how it works")
# elsif minut = minut1
#     errors.add(:How_many_minutes_walk, "must be different")
    end
    end
end
