#Singleton класс хранящий все добавленные ресурсы
class ResourceRegistry

  #Хэш хранящий все ресурсы
  @@resources = Hash.new

  #Добавление ресурса в хэш
  def ResourceRegistry.add(resource)
    #Извлечение имени контроллера из ресурса
    controller_name = resource.resource.keys[0]
    @@resources[controller_name] = resource
  end

  #Полученение хэша с ресурсами
  def ResourceRegistry.get_all
    @@resources
  end

  #Получение объекта ресурса по имени контроллера
  def ResourceRegistry.get_resource(controller_name)
    if @@resources.has_key?(controller_name)
      @@resources[controller_name]
    else
      raise "ACL error: '#{controller_name}' - resource not defined"
    end
  end
end
