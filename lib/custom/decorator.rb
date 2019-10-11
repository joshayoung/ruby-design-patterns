module Custom
  class Decorator < Student
    attr_accessor :level

    def initialize(level)
      @level = level
    end

    def education_level
      @level.education_level
    end
  end

  class Student
      def education_level
        raise NotImplementedError, "Cannot call '#{__method__}' on '#{self.class}' class"
      end
    end

  class StudentWithBachelors < Student
    def education_level
      "StudentWithBachelors"
    end
  end

  class StudentWithGraduateDegree < Decorator
    def education_level
      "StudentWithGraduateDegree(#{@level.education_level})"
    end
  end

  class StudentWithDoctoralDegree < Decorator
    def education_level
      "StudentWithDoctoralDegree(#{@level.education_level})"
    end
  end
end
