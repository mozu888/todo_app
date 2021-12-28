class PlansController < ApplicationController
  def index
  end
  def new
    plan = Plan.new
  end
  def create
    plan = Plan.new(plan_params)
  end
  private
  def plan_params
  end
end
