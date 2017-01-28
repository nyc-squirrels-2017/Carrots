def add_session(user)
  session[:user] = { user_id: user }
end

def remove_session
  session[:user] = nil
end

def current_user
  @current_user ||= User.find_by_id(session[:user][:user_id])
end

def login?
  !!current_user
end

def require_login
  redirect "/sessions/login" unless current_user
end
