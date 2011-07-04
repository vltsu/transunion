#Объект класса содержит ресурс(контроллер и все его action's)
class Resource
  attr :resource
  def initialize(controller_name)
    #Формирование имени класса на основе имени контроллера
      #обработка случая если имя контроллера вида "carrier_company"
    if controller_name =~ /\w_\w/
      class_name = controller_name.capitalize.sub(/_\w/) { |match| match[1].upcase } + 'Controller'
    else
      class_name = controller_name.capitalize + 'Controller'
    end

    #Получeние списка action's контроллера    
    actions = Object.const_get( class_name ).instance_methods
    #Преобразование элементов массива из Symbols в Strings
    actions.map!(&:to_s)
    #Формирование хэша вида { controller_name => ['action1','action2','action3'] }
    @resource = {controller_name => []}
    actions.each do |action|
      @resource[controller_name] << action
    end
  end
end
