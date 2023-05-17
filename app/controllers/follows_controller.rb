# frozen_string_literal: true

class FollowsController < ApplicationController
  # フォロー処理
  def create
    other_user = User.find(params[:id]) # params[:id] = フォローされたuserのid
    current_user.follow(other_user)
    redirect_to request.referer, success: t('.success')
  end

  # フォロー解除処理
  def destroy
    current_user.unfollow(params[:id]) # params[:id] = フォローを外されたuserのid
    redirect_to request.referer, success: t('.success')
  end
end
