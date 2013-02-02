class Gift < ActiveRecord::Base
  belongs_to :user

  def find
  	Gift.where(:description => "Barbie Playera")
  end

end
