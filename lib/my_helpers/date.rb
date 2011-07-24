#encoding: UTF-8
module MyHelpers
  module Date
    def month(month, rod = 0)
      monthRod = []
      monthRod[1]  = 'января'
      monthRod[2]  = 'февраля'
      monthRod[3]  = 'марта'
      monthRod[4]  = 'апреля'
      monthRod[5]  = 'мая'
      monthRod[6]  = 'июня'
      monthRod[7]  = 'июля'
      monthRod[8]  = 'августа'
      monthRod[9]  = 'сентября'
      monthRod[10] = 'октября'
      monthRod[11] = 'ноября'
      monthRod[12] = 'декабря'

      monthImenit = []
      monthImenit[1]  = 'Январь'
      monthImenit[2]  = 'Февраль'
      monthImenit[3]  = 'Март'
      monthImenit[4]  = 'Апрель'
      monthImenit[5]  = 'Май'
      monthImenit[6]  = 'Июнь'
      monthImenit[7]  = 'Июль'
      monthImenit[8]  = 'Август'
      monthImenit[9]  = 'Сентябрь'
      monthImenit[10] = 'Октябрь'
      monthImenit[11] = 'Ноябрь'
      monthImenit[12] = 'Декабрь'

      if (rod)
        monthRod[month]
      else
        monthImenit[month]
      end
    end
  end
end
