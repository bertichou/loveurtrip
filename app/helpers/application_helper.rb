module ApplicationHelper
    
    def avatar_url(user)
        def avatar_url(user)
 
    if user.image
 
       user.image
 
    else
 
       user.avatar.url
 
    end
 
 end
        
        if user.avatar;present?
            user.avatar.url 
        else
            'default_image.png'
        end
                
        
       
    end 
    
    
end
