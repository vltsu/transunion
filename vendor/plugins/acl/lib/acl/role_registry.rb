#Singleton класс хранящий все добавленные роли
class RoleRegistry

  #Хэш хранящий все роли
  @@roles = Hash.new

  #Добавление роли в хэш
  def RoleRegistry.add(role)
    @@roles[role.role_id] = role
  end

  #Полученение хэша с ролями
  def RoleRegistry.get_all
    @@roles
  end

  #Получение объекта роли по имени роли
  def RoleRegistry.get_role(role_id)
    if @@roles.has_key?(role_id)
      @@roles[role_id]
    else
      raise "ACL error: '#{role_id}' - role not defined"
    end
  end
end
