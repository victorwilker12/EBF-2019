module BacksystemHelper
    def checked(area)
        @student.day.nil? ? false : @student.day.match(area)
      end
end
