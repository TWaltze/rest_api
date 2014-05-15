class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :null_session

	after_filter :set_access_control_headers

	rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

	private
		def set_access_control_headers
			headers['Access-Control-Allow-Origin'] = '*'
			headers['Access-Control-Request-Method'] = '*'
		end

		def record_not_found(error)
			render :json => {:error => error.message}, :status => :not_found
		end
	end