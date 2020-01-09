require_relative 'menu'

class RandomMealPlan
  attr_reader :meal_plan

  def initialize(menu = Menu.new)
    @main_dishes = menu.main_dishes
    @side_dishes = menu.side_dishes
    @days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  end

  def generate_new_meal_plan
    @meal_plan = []
    @days.select { |day| @meal_plan << "#{day}: #{random_meal}" }
  end

  def print_meal_plan
    p @meal_plan.join("\n")
  end

  def random_meal
    @main = @main_dishes.sample
    @main_dishes.delete(@main)
    gets_side?(@main) ? (@side = @side_dishes.sample[:dish]) : @side = "n/a"
    "Main: #{@main[:dish]}, Side: #{@side}"
  end

  def gets_side?(main)
    main[:side]
  end
end