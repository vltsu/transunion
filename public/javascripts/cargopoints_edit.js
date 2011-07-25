$(document).ready(function() {

    deleteEmpty()
    removeExtraButtonsAtStart()

    function removeExtraButtonsAtStart() {
        var lastLoadingNum = $("tr #loadingButton:last").attr('num')
        var i=1

        while(lastLoadingNum > i) {
          $("#loadingButton[num='"+i+"']").parent().remove()
          $("#unloadingButtonDelete[num='"+i+"']").parent().remove()
          i++
        }
    }

    // Удаление пустых блоков
    function deleteEmpty() {
        var i= parseInt(2); // Проход по 8 блокам, начиная со второго
             // Пустота блоков определятся по значению адреса погрузки/разгрузки
        while(i<10) {
            if(!$('input#loadingAddress'+i).attr('value') && !$('input#unloadingAddress'+i).attr('value')) {  // Удаление блоков с обоими пустыми значениями
                $('#point'+i).remove()
            }
            ++i
        }
    }

    // Точка добавление
    $('#loadingButton p').live ('click',
        function addBlock() {

          id = parseInt($('#loadingButton').attr('num')) // Определение id текущего элемента
          if (id > 8) {  // Ограничение в 9 точек
              return false;
          }

          nextId = id + 1
          nextNextId = nextId + 1

          html  =    "\n<tbody id='point"+nextId+"'>\n"
          html +=        "\t<tr>\n"
          html +=            "\t\t<td id='loadingTitle"+nextId+"' class='borNone' align='center' colspan='4'><span style='font-style: italic; text-decoration: underline;'>"+number(nextId,0)+" точка погрузки</span></td>\n"
          html +=            "\t\t<td class='fieldBetween'></td>\n"
          html +=            "\t\t<td id='unloadingTitle"+nextId+"' class='borNone' align='center' colspan='4'><span style='font-style: italic; text-decoration: underline;'>"+number(nextId,0)+" точка разгрузки</span></td>\n"
          html +=        "\t</tr>\n"
          html +=        "\t<tr>\n"
          html +=            "\t\t<td colspan='2' id='loadingDateText"+nextId+"' class='fieldName fieldInnerTopLeft' >Дата, время погрузки:</td>\n"
          html +=            "\t\t<td colspan='2' id='loadingDateForm"+nextId+"' class='fieldInnerTopRight fieldForm'>"
          html +=            "<input type='text' name='request[loading_points_attributes]["+nextId+"][date]' id='loadingDate"+nextId+"' value='' class='ddate' size='10'> до: <input id='requestTime' class='inp' type='text' size='5' name='request[loading_points_attributes]["+nextId+"][time]'></td>\n"
          html +=            "\t\t<td class='fieldBetween'></td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingDateText"+nextId+"' class='fieldName fieldInnerTopLeft'>Дата, время разгрузки:</td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingDateForm"+nextId+"' class='fieldInnerTopRight fieldForm'>\n"
          html +=            "\t\t<input type='text' name='request[unloading_points_attributes]["+nextId+"][date]' id='unloadingDate"+nextId+"' value='' class='ddate' size='10'>  до: <input id='requestTime' class='inp' type='text' size='5' name='request[unloading_points_attributes]["+nextId+"][time]'</td>\n"
          html +=        "\t</tr>\n"
          html +=        "\t<tr>\n"
          html +=            "\t\t<td colspan='2' id='loadingAddressText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Адрес погрузки:</td>\n"
          html +=            "\t\t<td colspan='2' id='loadingAddressForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
          html +=            "<input type='text' name='request[loading_points_attributes]["+nextId+"][address]' id='loadingAddress"+nextId+"' value='' class='inp' size='25'><span style='color:red; font-size: 16px;'>*</span></td>\n"
          html +=            "\t\t<td class='fieldBetween'></td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingAddressText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Адрес разгрузки:</td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingAddressForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>\n"
          html +=            "\t\t<input type='text' name='request[unloading_points_attributes]["+nextId+"][address]' id='unloadingAddress"+nextId+"' value='' class='inp' size='25'><span style='color:red; font-size: 16px;'>*</span></td>\n"
          html +=        "\t</tr>\n"
          html +=        "\t<tr>\n"
          html +=            "\t\t<td colspan='2' id='loadingCompanyText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Грузоотправитель:</td>\n"
          html +=            "\t\t<td colspan='2' id='loadingCompanyForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
          html +=            "<input type='text' name='request[loading_points_attributes]["+nextId+"][shipper]' id='shipper"+nextId+"' value='' class='inp' size='25'><span style='color:red; font-size: 16px;'>*</span> </td>\n"
          html +=            "\t\t<td class='fieldBetween'></td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingCompanyText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Грузополучатель:</td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingCompanyForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>\n"
          html +=            "\t\t<input type='text' name='request[unloading_points_attributes]["+nextId+"][consignee]' value='' class='inp' size='25'><span style='color: red; font-size: 16px;'>*</span></td>\n"
          html +=        "\t</tr>\n"
          html +=        "\t<tr>\n"
          html +=            "\t\t<td colspan='2' id='loadingPersonText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Контактное лицо:</td>\n"
          html +=            "\t\t<td colspan='2' id='loadingPersonForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
          html +=            "<input type='text' name='request[loading_points_attributes]["+nextId+"][contact_person]' id='loadingContactPerson"+nextId+"' value='' class='inp' size='25'><span style='color: red; font-size: 16px;'>*</span> </td>\n"
          html +=            "\t\t<td class='fieldBetween'></td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingPersonText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Контактное лицо:</td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingPersonForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>\n"
          html +=            "\t\t<input type='text' name='request[unloading_points_attributes]["+nextId+"][contact_person]' id='unloadingContactPerson"+nextId+"' value='' class='inp' size='25'><span style='color: red; font-size: 16px;'>*</span> </td>\n"
          html +=        "\t</tr>\n"
          html +=        "\t<tr>\n"
          html +=            "\t\t<td colspan='2' id='loadingMobileText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Телефон для связи (моб):</td>\n"
          html +=            "\t\t<td colspan='2' id='loadingMobileForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
          html +=            "<input type='text' name='request[loading_points_attributes]["+nextId+"][phone]' id='loadingContactPhone"+nextId+"' value='' class='inp' size='25'><span style='color: red; font-size: 16px;'>*</span> </td>\n"
          html +=            "\t\t<td class='fieldBetween'></td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingMobileText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Телефон для связи (моб):</td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingMobileForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>\n"
          html +=            "\t\t<input type='text' name='request[unloading_points_attributes]["+nextId+"][phone]' id='unloadingContactPhone"+nextId+"' value='' class='inp' size='25'><span style='color: red; font-size: 16px;'>*</span> </td>\n"
          html +=        "\t</tr>\n"
          html +=        "\t<tr>\n"
          html +=            "\t\t<td colspan='2' id='loadingWorkPhoneText"+nextId+"' class='fieldName fieldInnerBottomLeft'>Телефон для связи (раб):</td>\n"
          html +=            "\t\t<td colspan='2' id='loadingWorkPhoneForm"+nextId+"' class='fieldInnerBottomRight fieldForm'>"
          html +=            "<input type='text' name='request[loading_points_attributes]["+nextId+"][phone_work]' id='loadingContactPhoneWork"+nextId+"' value='' class='inp' size='25'></td>\n"
          html +=            "\t\t<td class='fieldBetween'></td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingWorkPhoneText"+nextId+"' class='fieldName fieldInnerBottomLeft'>Телефон для связи (раб):</td>\n"
          html +=            "\t\t<td colspan='2' id='unloadingWorkPhoneForm"+nextId+"' class='fieldInnerBottomRight fieldForm'>\n"
          html +=            "\t\t<input type='text' name='request[unloading_points_attributes]["+nextId+"][phone_work]' id='unloadingContactPhoneWork"+nextId+"' value='' class='inp' size='25'></td>\n"
          html +=        "\t</tr>\n"
          html +=        "\t<tr>\n"
          if(id < 8) {
              html += "\t\t<td colspan='1' class='borNone' align='left' id='loadingButton' num='"+nextId+"'><p></p></td>\n"
              html += "\t\t<td colspan='1' class='borNone' align='left' id='loadingButtonDelete' num='"+nextId+"'><p></p></td>\n"
              html += "\t\t<td colspan='2' class='borNone'></td>\n"
          } else {
              html += "\t\t<td colspan='2' class='borNone' align='center'></td>\n"
              html += "\t\t<td colspan='2' class='borNone' align='right' id='loadingButtonDelete' num='"+nextId+"'><p></p></td>\n"
          }
          html +=            "\t\t<td id='emptyUnloadingButton"+nextId+"' class='borNone' colspan='5'></td>\n"
          html +=        "\t</tr>\n"
          html +=    "</tbody>\n"

          $(html).insertAfter("#point"+id)

          // Удаление старых кнопок
          $('#point'+id+' tr').last().remove()


          $('.ddate').datetimeEntry({datetimeFormat: 'Y-O-D'})
          return true
        }
    );

    // Точка погрузки удаление
    $('#loadingButtonDelete p').live ('click',
        function deleteLoadingBlock() {
            id = parseInt($('#loadingButtonDelete').attr('num')) // Определение id текущего элемента
            prevId = id - 1

            if (id < 2) {  // Запрет на удаление первого элемента
                return false;
            }

             $("#point"+id).remove()

            // Добавление кнопок добавить/удалить к концу пред. блока
               //Не показывать кнопку удалить для первого элемента
            if(prevId == 1) {
              htmlButton = "\t\t<tr>\n"
              htmlButton += "\t\t<td class='borNone' align='left' id='loadingButton' num='"+prevId+"'><p></p></td>\n"
              htmlButton += "\t\t<td class='borNone' align='right' id='loadingButtonDelete' num='"+prevId+"'></td>\n"
              htmlButton += "\t\t<td colspan='2' class='borNone'></td>\n"
              htmlButton += "\t\t<td class='fieldBetween'></td>\n"
              htmlButton += "\t\t<td colspan='4' class='borNone'></td>\n"
              htmlButton += "\t\t</tr>\n"
            } else {
              htmlButton = "\t\t<tr>\n"
              htmlButton += "\t\t<td class='borNone' align='left' id='loadingButton' num='"+prevId+"'><p></p></td>\n"
              htmlButton += "\t\t<td class='borNone' align='left' id='loadingButtonDelete' style='background:none; cursor:default;' num='"+prevId+"'><p></p></td>\n"
              htmlButton += "\t\t<td colspan='2' class='borNone'></td>\n"
              htmlButton += "\t\t<td class='fieldBetween'></td>\n"
              htmlButton += "\t\t<td colspan='4' class='borNone'></td>\n"
              htmlButton += "\t\t</tr>\n"
            }

            $("#point"+prevId).append(htmlButton)
        }
    );

    function number(number,smallCase) {
        switch (number) {
            case 1:
                if (smallCase == 0) {
                    return 'Первая';
                } else {
                    return 'первую';
                }
                break;
            case 2:
                if (smallCase == 0) {
                    return 'Вторая';
                } else {
                    return 'вторую';
                }
                break;
            case 3:
                if (smallCase == 0) {
                    return 'Третья';
                } else {
                    return 'третью';
                }
                break;
            case 4:
                if (smallCase == 0) {
                    return 'Четвертая';
                } else {
                    return 'четвертую';
                }
                break;
            case 5:
                if (smallCase == 0) {
                    return 'Пятая';
                } else {
                    return 'пятую';
                }
                break;
            case 6:
                if (smallCase == 0) {
                    return 'Шестая';
                } else {
                    return 'шестую';
                }
                break;
            case 7:
                if (smallCase == 0) {
                    return 'Седьмая';
                } else {
                    return 'седьмую';
                }
                break;
            case 8:
                if (smallCase == 0) {
                    return 'Восьмая';
                } else {
                    return 'восьмую';
                }
                break;
            case 9:
                if (smallCase == 0) {
                    return 'Девятая';
                } else {
                    return 'девятую';
                }
                break;
            break;
        }
    }

})
