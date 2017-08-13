class RoomsController < ApplicationController
   
   before_action :set_room, only:[:show, :edit, :update]
   before_action :authenticate_user!, except: [:show]
   before_action :require_same_user, only: [:edit, :update]
   
   def index
 
            @rooms = current_user.rooms 
 end
    
    def new 
   
            @room = current_user.rooms.build
            
    def create
           
            
            @room = current_user.rooms.build(room_params) 
            if @room.save 
                if params[:images]
 
       params[:images].each do |i|
 
            @room.photos.create(image: i)
 
       end
   end
            @photos = @room.photos
                redirect_to edit_room_path(@room), notice:"Votre Annonce a été ajoutée avec succès"
            else
                render :new 
            end
        
    
    
    end
   
   
    end
    
 
   def show
       
     @photos = @room.photos  
       
       
    end
   def edit
       
     @photos = @room.photos
       
       end
    def update
        if @room.update(room_params)
            if params[:images]
 
       params[:images].each do |i|
 
            @room.photos.create(image: i)
 
       end
   end
            @photos = @room.photos
            
            redirect_to edit_room_path(@room), notice:"Modification Enregistée..." 
        else
            render :edit 
        end 
       
       end
private
    def set_room
        @room = Room.find(params[ :id])
    end
    
    def room_params 
        params.require(:room).permit(:home_type, :room_type, :accommodate, :bed_room, :bath_room,
        :listing_name, :summary, :address, :is_wifi, :is_tv, :is_pool, :is_closet, :is_shampoo, :is_breakfast,
        :is_heating, :is_air, :is_kitchen, :is_elevator, :is_essantials, :is_washer, :active, :price)
    end
    
    def require_same_user 
        if current_user != @room.user_id
            flash[:danger] = "Vous n'avez pas le droit de modifier cette page"
            
            redirect_to root_path 
        end
    end
    end
    

