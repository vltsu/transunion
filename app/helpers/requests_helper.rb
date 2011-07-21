#encoding: UTF-8
module RequestsHelper
  def edit_or_show_action_and_point_exist(point)
    actions = ['edit','show']
    if (actions.include? params[:action]) && point
      true
    else
      false
    end
  end

  def rus_points_num(num)
    case num
      when 1
        'Первая'
      when 2
        'Вторая'
      when 3
        'Третья'
      when 4
        'Четвертая'
      when 5
        'Пятая'
      when 6
        'Шестая'
      when 7
        'Седьмая'
      when 8
        'Восьмая'
      when 9
        'Девятая'
    end
  end
end
