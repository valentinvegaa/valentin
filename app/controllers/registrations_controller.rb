# registrations_controller.rb
# Sobreescribe Devise::RegistrationsController para permitir registrar nuevos usuariis a usurios ya logeados

class RegistrationsController < Devise::RegistrationsController
  # disable default no_authentication action
  skip_before_action :require_no_authentication, only: [:new, :create, :cancel]

  protected

  # The default sign_up method signs in new user upon creation
  # I just commented it out so you can see what the default method looks like
  def sign_up(resource_name, resource)
    # sign_in(resource_name, resource)
    redirect_to root_path, :notice=>"User created!"
  end
end