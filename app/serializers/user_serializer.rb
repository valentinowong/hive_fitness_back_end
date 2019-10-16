class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :auth0_user_id, :email, :first_name, :last_name
end
