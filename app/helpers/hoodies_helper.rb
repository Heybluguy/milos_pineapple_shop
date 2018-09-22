module HoodiesHelper

  def hoody_author(hoody)
    user_signed_in? && current_user.id == hoody.user_id
  end
end
