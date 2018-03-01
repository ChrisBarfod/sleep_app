require_relative 'calculator'
require_relative 'strings'

module NotSleeping
    OPTION_2 = 'no'
    module_function
    def not_sleeping_now
        if(Calculator.calculate_sleep_time >= App::SLEEP_GOAL) then
            Strings.not_sleeping_but_goal_achievable 
        else
            Strings.not_sleeping_and_goal_unachievable
        end
    end
end
