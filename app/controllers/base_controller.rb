# We inherit app controller from Tenet

class BaseController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # make sure we look in app views as well as in Tenet
  prepend_view_path 'app/views'

end
