require 'colorize'
require_relative 'calculator'

module Strings
    module_function
    def line_breaker
        puts "- " * 20 
    end
    def prompt_user
        puts "Good evening,"
        puts "Will you be going to sleep now? (options: yes, no)"
        gets.chomp
    end
    def current_time
        puts "The current time is: #{Calculator::CURRENT_TIME}"
    end
    def wake_up_time
        puts "Your wake up time is: #{Calculator::WAKE_UP_TIME}"
    end
    def show_times
        line_breaker
        current_time
        wake_up_time
        line_breaker
    end
    def sleeping_and_sleep_goal_met
        show_times
        puts "GOAL MET, GREAT WORK!".colorize(:green)
        sleep_time
        puts "You are meeting your sleep goal of getting at least #{App::SLEEP_GOAL} hours of sleep per night."
        line_breaker
        puts "Goodnight!"
        line_breaker
    end
    def sleeping_and_sleep_goal_not_met
        show_times
        puts "GOAL NOT MET.".colorize(:red)
        sleep_time
        puts "You are not meeting your sleep goal of getting at least #{App::SLEEP_GOAL} hours of sleep per night."
        line_breaker
        puts "Don't worry, you can always try again tomorrow. Goodnight!"
        line_breaker
    end
    def not_sleeping_but_goal_achievable
        show_times
        puts "SLEEP GOAL STILL ACHIEVABLE".colorize(:yellow)
        sleep_time
        puts "To meet your sleep goal of getting at least #{App::SLEEP_GOAL} hours of sleep per night, please make sure to sleep within #{Calculator.sleep_within} hour(s)."
        line_breaker
    end
    def not_sleeping_and_goal_unachievable
        show_times
        puts "GOAL NOT MET. YOU NEED TO SLEEP...".colorize(:red)
        sleep_time
        puts "You are not meeting your sleep goal of getting at least #{App::SLEEP_GOAL} hours of sleep per night."
        line_breaker
        puts "Please go to sleep as soon as you can."
        line_breaker
    end
    def sleep_time
        line_breaker
        puts "You have to wake up in #{Calculator.calculate_sleep_time} hours."
        line_breaker
    end 
end