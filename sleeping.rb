require_relative 'calculator'
require_relative 'strings'

module Sleeping
    OPTION_1 = 'yes'
    module_function
    def sleeping_now
        if(Calculator.calculate_sleep_time >= App::SLEEP_GOAL) then
            Strings.sleeping_and_sleep_goal_met
        else
            Strings.sleeping_and_sleep_goal_not_met
        end
    end
end
