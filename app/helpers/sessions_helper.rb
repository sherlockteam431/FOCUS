module SessionsHelper
    def log_in(user)
        session[:userId]= user.userId
    end
    
    def current_user
        @current_user ||= User.find_by(userId: session[:userId])
    end
    
     # Returns true if the user is logged in, false otherwise.
    def logged_in?
        !current_user.nil?
    end
    
    def log_out
        session.delete(:userId)
        @current_user = nil
    end
end
