class UsersController < ApplicationControllers
    
    def likes
        likes = Like.where(user_id: @user_id).pluck(:post_id)
        @like_posts = Post.find(likes)
    end
end
