class AccessRegistry
  @@access = {}
  def AccessRegistry.allow(role_id, controller_name, action = nil)
    role = RoleRegistry.get_role(role_id)
    resource = ResourceRegistry.get_resource(controller_name) 
    if (!action)
      if @@access[role_id]
        @@access[role_id] << [ controller_name, resource.resource[controller_name] ]
      else
        @@access[role_id] = [ [controller_name, resource.resource[controller_name]] ]
      end
    end
  end

  def AccessRegistry.check(role_id, controller_name, action_name)
    if @@access[role_id]
      @@access[role_id].each do |acc|
        if acc[0] == controller_name
          if acc[1].include? action_name
            return true
          else
            return nil
          end
        end
      end
    end
  end
end
