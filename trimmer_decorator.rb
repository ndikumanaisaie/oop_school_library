require_relative 'base_decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.strip.slice(0, 10) if @nameable.correct_name.length > 10
  end
end
