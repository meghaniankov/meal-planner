require 'sinatra/base'
require_relative './lib/meal_plan'

class MealPlan < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/new_meal_plan' do
    $meal_plan = RandomMealPlan.new
    @meal_plan = $meal_plan
    @meal_plan.generate_new_meal_plan
    erb(:meal_plan)
  end

  
end