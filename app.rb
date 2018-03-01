require 'time_difference'
require_relative 'calculator'
require_relative 'sleeping'
require_relative 'notSleeping'
require_relative 'strings'

module App
    SLEEP_GOAL = 8.0
    module_function
    def prompt
        Strings.prompt_user
    end
    def start
        command = prompt
        if(command == Sleeping::OPTION_1) then
            Sleeping.sleeping_now
        elsif(command == NotSleeping::OPTION_2) then   
            NotSleeping.not_sleeping_now
        end 
    end
end
App.start

# 1. Documentation
# 2. Test Module
# 3. Git
# 4. Try to make the time look nicer! 
# 5. Make the UI/text better (i.e the strings) - DONE