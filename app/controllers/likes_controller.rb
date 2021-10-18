class LikesController < ApplicationController
  def create
    @gym = Gym.find(params[:gym_id])
    current_user.likes.create!(gym_id: @gym.id)
  end

  def destroy
    @gym = Gym.find(params[:gym_id])
    current_user.likes.find_by(gym_id: @gym.id).destroy!
  end
end
