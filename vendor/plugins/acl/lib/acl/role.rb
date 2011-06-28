class Role
  attr :role_id
  def initialize(role_id) 
    @role_id = role_id.to_str
  end
end

