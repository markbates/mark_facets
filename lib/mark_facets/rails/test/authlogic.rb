if defined?(Authlogic)
  
  if Rails.v3?
  
    def login(user = @user)
      @current_user = user
      activate_authlogic
      sess = UserSession.create(user)
      UserSession.stub!(:find).and_return(sess)
    end

    def logout
      @current_user = nil
      UserSession.stub!(:find).and_return(nil)
    end
    
  end # Rails 3
  
  if Rails.v2?
    
    def login(user = @user)
      @current_user = user
      UserSession.create(user)
      controller.stub!(:current_user).and_return(user)
    end

    def logout
      @current_user = nil
      controller.stub!(:current_user).and_return(nil)
    end
    
  end # Rails 2

  def current_user
    @current_user
  end
  
end