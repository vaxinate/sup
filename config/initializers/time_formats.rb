# Making a nice, user friendly datetime format
Time::DATE_FORMATS[:friendly_datetime] = lambda { |date| date.strftime("%b #{ActiveSupport::Inflector.ordinalize(date.day)} %l:%M %P %Z") }
Time::DATE_FORMATS[:friendly_date]     = lambda { |date| date.strftime("%b #{ActiveSupport::Inflector.ordinalize(date.day)}") }
