class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :ap_materno, :ap_paterno, :telefono, :direccion, :dir_nro, :dir_dpto, :dir_comuna, :dir_ciudad, :dir_pais, :fecha_nac, :tratamiento, :pet_perrito, :pet_gatito, :pet_aves, :pet_roedores, :pet_reptiles,:pet_otros, :email, :password])
            devise_parameter_sanitizer.permit(:account_update, keys: [:name, :ap_materno, :ap_paterno, :telefono, :direccion, :dir_nro, :dir_dpto, :dir_comuna, :dir_ciudad, :dir_pais, :fecha_nac, :tratamiento, :pet_perrito, :pet_gatito, :pet_aves, :pet_roedores, :pet_reptiles,:pet_otros, :email, :password, :current_password])
        end

end
