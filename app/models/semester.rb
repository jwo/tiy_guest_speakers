class Semester < ActiveRecord::Base
  has_many :talks
  has_many :speakers, through: :talks

def name
  unless start_date.nil?
    start_date.strftime('%B %Y')
  end
end

end
