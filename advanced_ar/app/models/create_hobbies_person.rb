class CreateHobbiesPerson < ActiveRecord::Base
  belongs_to :person
  belongs_to :hobby
end
