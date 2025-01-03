# module ControllerMacros
#   def login_in(user)
#     @request.env['devise.mapping'] = Devise.mapping[:usuario]
#     sign_in user
#   end
# end
module ControllerMacros
  def login_user(user)
    login_as(user, scope: :usuario)
  end
end
