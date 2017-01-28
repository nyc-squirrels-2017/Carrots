def add_session(user)
  session[:user_id] = user
end

def remove_session
  session[:user_id] = nil
  session[:card] = nil
end

def current_user
  @current_user || User.find_by_id(session[:user_id])
end

def login?
  !!current_user
end

def require_login
  redirect "/sessions/login" unless current_user
end
