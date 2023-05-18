# frozen_string_literal: true

class FollowsController < ApplicationController
  # フォロー処理
  def create
    @user = User.find(params[:id]) # params[:id] = フォローされたuserのid
    current_user.follow(@user)
    # redirect_to request.referer, success: t('.success')
  end

  # フォロー解除処理
  def destroy
    @user = current_user.followings.find(params[:id])
    current_user.unfollow(@user) # params[:id] = フォローを外されたuserのid
    # redirect_to request.referer, success: t('.success')
  end
end
