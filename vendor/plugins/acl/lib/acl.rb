#
$LOAD_PATH.unshift(File.join( File.dirname(__FILE__), 'acl') )
require 'loader'

class Acl 
  def add_role(role_id)
    role = Role.new(role_id)
    RoleRegistry.add(role)
  end

  def show_roles(role_id)
    RoleRegistry.get_role(role_id)
  end

  def add_resource(controller_name)
    resource = Resource.new(controller_name)
    ResourceRegistry.add(resource)
  end

  def allow(role_name, controller_name, actions = nil)
    AccessRegistry.allow(role_name, controller_name, actions)
  end

  def check_access(role_name, controller_name, action_name)
    deb = ResourceRegistry.get_all
    if AccessRegistry.check(role_name, controller_name, action_name) == true
      return true
    end
  end
end

