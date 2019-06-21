class Student < ApplicationRecord
     before_save do
         self.day.gsub!(/[\[\]\"]/, "") if attribute_present?("um" || "dois" || "três")
       end
end
