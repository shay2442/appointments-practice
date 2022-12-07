class Api::AppointmentsController < ApplicationController
    def index
      # TODO: return all values
      # TODO: return filtered values
      Appointment.all.map do |appointment|
        {
          id: appointment.id,
          start_time: appointment.start_time
        }
      end
    end


#   private 
#    def past=1
    
#    end
  end

    # if params[:start_time] == 2.days.ago

# appointments = filter_appointments(params)
# - `?past=1` returns only appointments in the past
# - `?past=0` returns only appointments in the future



