class Employee < ActiveRecord::Base
  @participants = Participant.all
end
