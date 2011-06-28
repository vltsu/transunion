#Объект класса содержит ресурс(контроллер и все его action's)
class Resource
  attr :resource
  def initialize(controller)
    #Формирование имени класса на основе имени контроллера
    class_name = controller.capitalize + 'Controller'
    #Получeние списка action's контроллера    
    actions = Object.const_get( class_name ).instance_methods
    #Преобразование элементов массива из Symbols в Strings
    actions.map!(&:to_s)
    #Формирование хэша вида { controller_name => ['action1','action2','action3'] }
    @resource = {controller => []}
    actions.each do |action|
      @resource[controller] << action
    end
  end
end
