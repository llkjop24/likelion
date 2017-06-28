class SearchesController < ApplicationController
    
    def search
        word = params[:search_content]
        @posts = Post.where("content LIKE ? or title LIKE ?", "%#{word}%", "%#{word}%")
                            
        puts @posts
        
         @comments = Comment.where("content LiKE ?" "%#{word}%")
        
        puts @comments
    end
end
