class GymsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
    @gym = Gym.new
  end

  def create
    @gym = current_user.gyms.create!(gym_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def gym_params
    paramas.require(:gym).permit(:gym_name, :address, :content)
  end
end
