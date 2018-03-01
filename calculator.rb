require 'time_difference'

module Calculator
    module_function
    WAKE_UP_TIME = DateTime.now.midnight + 1.days + 4.hours
    CURRENT_TIME = DateTime.now
    def calculate_sleep_time
        result = ((TimeDifference.between(WAKE_UP_TIME, CURRENT_TIME).in_hours)).to_f.round(2)
    end
    def sleep_within
        result = (calculate_sleep_time - App::SLEEP_GOAL).to_f.round(2)
    end
    def should_have_slept_at
        result = (App::SLEEP_GOAL - calculate_sleep_time)
    end
end

    