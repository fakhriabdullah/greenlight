class JoinController < ApplicationController  
  
  # POST /room/join_2
  def join_2
    p ''  
    p '--- extracted params are ---'  
    link = join_params[:link]  
    p link
    arrLink = link.rpartition('/')
    if(arrLink.length == 0)
      p link
      redirect_to room_path(link)
    else
      p arrLink[arrLink.length - 1]
      redirect_to room_path(arrLink[arrLink.length - 1])
    end
  end

  def join_params  
    params.require(:join).permit(:link)
    end  
end