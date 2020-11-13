class TimerController < ActionController::Base
	protect_from_forgery
	def index
		session[:user_id] = session[:user_id].present? ? session[:user_id] : Time.now.to_i
		params[:user_id] = session[:user_id]
		@user_logs = UserLog.where(user_id: session[:user_id])
	end
	def update_log
		UserLog.find_or_create_by(user_id: params[:user_id], session: params[:break_type], start_time: Time.now - (params[:time_val].to_f/60).minutes, end_time: Time.now)
	end
end
