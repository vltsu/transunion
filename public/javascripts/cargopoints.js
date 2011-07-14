$(document).ready(function() {

    // Точка погрузки добавление
    $('#loadingButton p').live ('click',
        function addLoadingBlock() {
            id = parseInt($('#loadingButton').attr('num')) // Определение id текущего элемента

            if (id > 8) {  // Ограничение в 9 точек
                return false;
            }

            nextId = id + 1
            nextNextId = nextId + 1

            tbody = $("#point"+nextId)  // Поиск блока со следующим id
            if (tbody.length) {

                htmlTitle  = "\t\t<td id='loadingTitle"+nextId+"' class='borNone' align='center' colspan='4'><span style='font-style: italic; text-decoration: underline;'>"+number(nextId,0)+" точка погрузки</span></td>\n"
                htmlTitle += "\t\t<td class='fieldBetween'></td>\n"
                $('#emptyLoadingTitle'+nextId).replaceWith(htmlTitle)

                htmlDate  = "\t\t<td colspan='2' id='loadingDateText"+nextId+"' class='fieldName fieldInnerTopLeft' >Дата, время погрузки:</td>\n"
                htmlDate += "\t\t<td colspan='2' id='loadingDateForm"+nextId+"' class='fieldInnerTopRight fieldForm'>"
                htmlDate += "<input type='text' name='request[loading_point"+nextId+"][date]' id='loadingDate"+nextId+"' value='' class='inp ddateshort' size='10'> до: <input type='text' size='5' class='inp' value='' id='request[loading_point"+nextId+"][time]' name='request[loading_point"+nextId+"][time]'></td>\n</td>\n"
                htmlDate += "\t\t<td class='fieldBetween'>"
                $('#emptyLoadingDate'+nextId).replaceWith(htmlDate)

                htmlAddress  = "\t\t<td colspan='2' id='loadingAddressText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Адрес погрузки:</td>\n"
                htmlAddress += "\t\t<td colspan='2' id='loadingAddressForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                htmlAddress += "<input type='text' name='request[loading_point"+nextId+"][date]' id='loadingAddress"+nextId+"' value='' class='inp' size='25'></td>\n"
                htmlAddress += "\t\t<td class='fieldBetween'></td>\n"
                $('#emptyLoadingAddress'+nextId).replaceWith(htmlAddress)

                htmlCompany  = "\t\t<td colspan='2' id='loadingCompanyText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Грузоотправитель:</td>\n"
                htmlCompany += "\t\t<td colspan='2' id='loadingCompanyForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                htmlCompany += "<input type='text' name='request[loading_point"+nextId+"][shipper]' id='shipper"+nextId+"' value='' class='inp' size='25'></td>\n"
                htmlCompany += "\t\t<td class='fieldBetween'></td>\n"
                $('#emptyLoadingCompany'+nextId).replaceWith(htmlCompany)

                htmlPerson  = "\t\t<td colspan='2' id='loadingPersonText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Контактное лицо:</td>\n"
                htmlPerson += "\t\t<td colspan='2' id='loadingPersonForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                htmlPerson += "<input type='text' name='request[loading_point"+nextId+"][contact_person]' id='loadingContactPerson"+nextId+"' value='' class='inp' size='25'></td>\n"
                htmlPerson += "\t\t<td class='fieldBetween'></td>\n"
                $('#emptyLoadingPerson'+nextId).replaceWith(htmlPerson)

                htmlMobile  = "\t\t<td colspan='2' id='loadingMobileText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Телефон для связи (моб):</td>\n"
                htmlMobile += "\t\t<td colspan='2' id='loadingMobileForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                htmlMobile += "<input type='text' name='request[loading_point"+nextId+"][phone]' id='loadingContactPhone"+nextId+"' value='' class='inp' size='25'></td>\n"
                htmlMobile += "\t\t<td class='fieldBetween'></td>\n"
                $('#emptyLoadingMobile'+nextId).replaceWith(htmlMobile)

                htmlWorkPhone  = "\t\t<td colspan='2' id='loadingWorkPhoneText"+nextId+"' class='fieldName fieldInnerBottomLeft'>Телефон для связи (раб):</td>\n"
                htmlWorkPhone += "\t\t<td colspan='2' id='loadingWorkPhoneForm"+nextId+"' class='fieldInnerBottomRight fieldForm'>"
                htmlWorkPhone += "<input type='text' name='request[loading_point"+nextId+"][phone_work]' id='loadingContactPhoneWork"+nextId+"' value='' class='inp' size='25'></td>\n"
                htmlWorkPhone += "\t\t<td class='fieldBetween'></td>\n"
                $('#emptyLoadingWorkPhone'+nextId).replaceWith(htmlWorkPhone)

                if(id < 8) {
                    htmlButton  = "\t\t<td colspan='2' class='borNone' align='left' id='loadingButton' num='"+nextId+"'><p></p></td>\n"
                    htmlButton  += "\t\t<td colspan='2' class='borNone' align='right' id='loadingButtonDelete' num='"+nextId+"'><p></p></td>\n"
                } else {
                    htmlButton = "\t\t<td colspan='2' class='borNone' align='center'></td>\n"
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='right' id='loadingButtonDelete' num='"+nextId+"'><p></p></td>\n"
                }
                htmlButton += "\t\t<td class='fieldBetween'></td>\n"
                $('#emptyLoadingButton'+nextId).replaceWith(htmlButton)

            } else {

                html  =    "\n<tbody id='point"+nextId+"'>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td id='loadingTitle"+nextId+"' class='borNone' align='center' colspan='4'><span style='font-style: italic; text-decoration: underline;'>"+number(nextId,0)+" точка погрузки</span></td>\n"
                html +=            "\t\t<td id='emptyUnloadingTitle"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td colspan='2' id='loadingDateText"+nextId+"' class='fieldName fieldInnerTopLeft' >Дата, время погрузки:</td>\n"
                html +=            "\t\t<td colspan='2' id='loadingDateForm"+nextId+"' class='fieldInnerTopRight fieldForm'>"
                html +=            "<input type='text' name='request[loading_point"+nextId+"][date]' id='loadingDate"+nextId+"' value='' class='inp ddateshort' size='10'> до: <input type='text' size='5' class='inp' value='' id='request[loading_point"+nextId+"][time]' name='request[loading_point"+nextId+"][time]'></td>\n</td>\n"
                html +=            "\t\t<td id='emptyUnloadingDate"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td colspan='2' id='loadingAddressText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Адрес погрузки:</td>\n"
                html +=            "\t\t<td colspan='2' id='loadingAddressForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                html +=            "<input type='text' name='request[loading_point"+nextId+"][address]' id='loadingAddress"+nextId+"' value='' class='inp' size='25'></td>\n"
                html +=            "\t\t<td id='emptyUnloadingAddress"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td colspan='2' id='loadingCompanyText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Грузоотправитель:</td>\n"
                html +=            "\t\t<td colspan='2' id='loadingCompanyForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                html +=            "<input type='text' name='request[loading_point"+nextId+"][shipper]' id='shipper"+nextId+"' value='' class='inp' size='25'></td>\n"
                html +=            "\t\t<td id='emptyUnloadingCompany"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td colspan='2' id='loadingPersonText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Контактное лицо:</td>\n"
                html +=            "\t\t<td colspan='2' id='loadingPersonForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                html +=            "<input type='text' name='request[loading_point"+nextId+"][contact_person]' id='loadingContactPerson"+nextId+"' value='' class='inp' size='25'></td>\n"
                html +=            "\t\t<td id='emptyUnloadingPerson"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td colspan='2' id='loadingMobileText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Телефон для связи (моб):</td>\n"
                html +=            "\t\t<td colspan='2' id='loadingMobileForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                html +=            "<input type='text' name='request[loading_point"+nextId+"][phone]' id='loadingContactPhone"+nextId+"' value='' class='inp' size='25'></td>\n"
                html +=            "\t\t<td id='emptyUnloadingMobile"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td colspan='2' id='loadingWorkPhoneText"+nextId+"' class='fieldName fieldInnerBottomLeft'>Телефон для связи (раб):</td>\n"
                html +=            "\t\t<td colspan='2' id='loadingWorkPhoneForm"+nextId+"' class='fieldInnerBottomRight fieldForm'>"
                html +=            "<input type='text' name='request[loading_point"+nextId+"][phone_work]' id='loadingContactPhoneWork"+nextId+"' value='' class='inp' size='25'></td>\n"
                html +=            "\t\t<td id='emptyUnloadingWorkPhone"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                if(id < 8) {
                    html += "\t\t<td colspan='2' class='borNone' align='left' id='loadingButton' num='"+nextId+"'><p></p></td>\n"
                    html += "\t\t<td colspan='2' class='borNone' align='right' id='loadingButtonDelete' num='"+nextId+"'><p></p></td>\n"
                } else {
                    html += "\t\t<td colspan='2' class='borNone' align='center'></td>\n"
                    html += "\t\t<td colspan='2' class='borNone' align='right' id='loadingButtonDelete' num='"+nextId+"'><p></p></td>\n"
                }
                html +=            "\t\t<td id='emptyUnloadingButton"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=        "\t</tr>\n"
                html +=    "</tbody>\n"

                $(html).insertAfter("#point"+id)
            }
            removeExtraButtons('loading',id)
            $('.ddateshort').datetimeEntry({datetimeFormat: 'Y-O-D'})
            return true
        }
    );


    // Точка разгрузки добавление
    $('#unloadingButton p').live ('click',
        function addUnloadingBlock() {
            id = parseInt($('#unloadingButton').attr('num')) // Определение id текущего элемента

            if (id > 8) {  // Ограничение в 9 точек
                return false;
            }

            nextId = parseInt(id) + 1
            nextNextId = nextId + 1

            tbody = $("#point"+nextId)  // Поиск блока со следующим id
            if (tbody.length) {

                htmlTitle  = "\t\t<td class='fieldBetween'></td>\n"
                htmlTitle += "\t\t<td id='unloadingTitle"+nextId+"' class='borNone' align='center' colspan='4'><span style='font-style: italic; text-decoration: underline;'>"+number(nextId,0)+" точка разгрузки</span></td>\n"
                $('#emptyUnloadingTitle'+nextId).replaceWith(htmlTitle)

                htmlDate  = "\t<td class='fieldBetween'></td>\n"
                htmlDate += "\t\t<td colspan='2' id='unloadingDateText"+nextId+"' class='fieldName fieldInnerTopLeft' >Дата, время разгрузки:</td>\n"
                htmlDate += "\t\t<td colspan='2' id='unloadingDateForm"+nextId+"' class='fieldInnerTopRight fieldForm'>"
                htmlDate += "<input type='text' name='request[unloading_point"+nextId+"][date]' id='unloadingDate"+nextId+"' class='inp ddateshort' size='10'> до: <input type='text' size='5' class='inp' value='' id='request[unloading_point"+nextId+"][time]' name='request[unloading_point"+nextId+"][time]'></td>\n</td>\n"
                $('#emptyUnloadingDate'+nextId).replaceWith(htmlDate)

                htmlAddress = "\t\t<td class='fieldBetween'></td>\n"
                htmlAddress += "\t\t<td colspan='2' id='unloadingAddressText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Адрес разгрузки:</td>\n"
                htmlAddress += "\t\t<td colspan='2' id='unloadingAddressForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                htmlAddress += "<input type='text' name='request[unloading_point"+nextId+"][address]' id='unloadingAddress"+nextId+"' value='' class='inp' size='25'></td>\n"
                $('#emptyUnloadingAddress'+nextId).replaceWith(htmlAddress)

                htmlCompany = "\t\t<td class='fieldBetween'></td>\n"
                htmlCompany += "\t\t<td colspan='2' id='unloadingCompanyText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Грузополучатель:</td>\n"
                htmlCompany += "\t\t<td colspan='2' id='unloadingCompanyForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                htmlCompany += "<input type='text' name='request[unloading_point"+nextId+"][consignee]' id='consignee"+nextId+"' value='' class='inp' size='25'></td>\n"
                $('#emptyUnloadingCompany'+nextId).replaceWith(htmlCompany)

                htmlPerson = "\t\t<td class='fieldBetween'></td>\n"
                htmlPerson += "\t\t<td colspan='2' id='unloadingPersonText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Контактное лицо:</td>\n"
                htmlPerson += "\t\t<td colspan='2' id='unloadingPersonForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                htmlPerson += "<input type='text' name='request[unloading_point"+nextId+"][contact_person]' id='unloadingContactPerson"+nextId+"' value='' class='inp' size='25'></td>\n"
                $('#emptyUnloadingPerson'+nextId).replaceWith(htmlPerson)

                htmlMobile = "\t\t<td class='fieldBetween'></td>\n"
                htmlMobile += "\t\t<td colspan='2' id='unloadingMobileText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Телефон для связи (моб):</td>\n"
                htmlMobile += "\t\t<td colspan='2' id='unloadingMobileForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>"
                htmlMobile += "<input type='text' name='request[unloading_point"+nextId+"][phone]' id='unloadingContactPhone"+nextId+"' value='' class='inp' size='25'></td>\n"
                $('#emptyUnloadingMobile'+nextId).replaceWith(htmlMobile)

                htmlWorkPhone  = "\t\t<td class='fieldBetween'></td>\n"
                htmlWorkPhone += "\t\t<td colspan='2' id='unloadingWorkPhoneText"+nextId+"' class='fieldName fieldInnerBottomLeft'>Телефон для связи (раб):</td>\n"
                htmlWorkPhone += "\t\t<td colspan='2' id='unloadingWorkPhoneForm"+nextId+"' class='fieldInnerBottomRight fieldForm'>"
                htmlWorkPhone += "<input type='text' name='request[unloading_point"+nextId+"][phone_work]' id='unloadingContactPhoneWork"+nextId+"' value='' class='inp' size='25'></td>\n"
                $('#emptyUnloadingWorkPhone'+nextId).replaceWith(htmlWorkPhone)

                htmlButton  = "\t\t<td class='fieldBetween'></td>\n"
                if(id < 8) {
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='left' id='unloadingButton' num='"+nextId+"'><p></p></td>\n"
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='right' id='unloadingButtonDelete' num='"+nextId+"'><p></p></td>\n"
                } else {
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='center'></td>\n"
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='right' id='unloadingButtonDelete' num='"+nextId+"'><p></p></td>\n"
                }
                $('#emptyUnloadingButton'+nextId).replaceWith(htmlButton)

            } else {

                html  =    "\n<tbody id='point"+nextId+"'>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td id='emptyLoadingTitle"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=            "\t\t<td id='unloadingTitle"+nextId+"' class='borNone' align='center' colspan='4'><span style='font-style: italic; text-decoration: underline;'>"+number(nextId,0)+" точка разгрузки</span></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td id='emptyLoadingDate"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingDateText"+nextId+"' class='fieldName fieldInnerTopLeft'>Дата, время разгрузки:</td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingDateForm"+nextId+"' class='fieldInnerTopRight fieldForm'>\n"
                html +=            "\t\t<input type='text' name='request[unloading_point"+nextId+"][date]' id='unloadingDate"+nextId+"' value='' class='inp ddateshort' size='10'> до: <input type='text' size='5' class='inp' value='' id='request[unloading_point"+nextId+"][time]' name='request[unloading_point"+nextId+"][time]'></td>\n\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td id='emptyLoadingAddress"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingAddressText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Адрес разгрузки:</td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingAddressForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>\n"
                html +=            "\t\t<input type='text' name='request[unloading_point"+nextId+"][address]' id='unloadingAddress"+nextId+"' value='' class='inp' size='25'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td id='emptyLoadingCompany"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingCompanyText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Грузополучатель:</td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingCompanyForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>\n"
                html +=            "\t\t<input type='text' name='request[unloading_point"+nextId+"][consignee]' id='consignee"+nextId+"' value='' class='inp' size='25'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td id='emptyLoadingPerson"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingPersonText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Контактное лицо:</td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingPersonForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>\n"
                html +=            "\t\t<input type='text' name='request[unloading_point"+nextId+"][contact_person]' id='unloadingContactPerson"+nextId+"' value='' class='inp' size='25'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td id='emptyLoadingMobile"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingMobileText"+nextId+"' class='fieldName fieldInnerMiddleLeft'>Телефон для связи (моб):</td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingMobileForm"+nextId+"' class='fieldInnerMiddleRight fieldForm'>\n"
                html +=            "\t\t<input type='text' name='request[unloading_point"+nextId+"][phone]' id='unloadingContactPhone"+nextId+"' value='' class='inp' size='25'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td id='emptyLoadingWorkPhone"+nextId+"' class='borNone' colspan='5'></td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingWorkPhoneText"+nextId+"' class='fieldName fieldInnerBottomLeft'>Телефон для связи (раб):</td>\n"
                html +=            "\t\t<td colspan='2' id='unloadingWorkPhoneForm"+nextId+"' class='fieldInnerBottomRight fieldForm'>\n"
                html +=            "\t\t<input type='text' name='request[unloading_point"+nextId+"][phone_work]' id='unloadingContactPhoneWork"+nextId+"' value='' class='inp' size='25'></td>\n"
                html +=        "\t</tr>\n"
                html +=        "\t<tr>\n"
                html +=            "\t\t<td id='emptyLoadingButton"+nextId+"' class='borNone' colspan='5'></td>\n"
                if(id < 8) {
                    html += "\t\t<td colspan='2' class='borNone' align='left' id='unloadingButton' num='"+nextId+"'><p></p></td>\n"
                    html += "\t\t<td colspan='2' class='borNone' align='right' id='unloadingButtonDelete' num='"+nextId+"'><p></p></td>\n"
                } else {
                    html += "\t\t<td colspan='2' class='borNone' align='center'></td>\n"
                    html += "\t\t<td colspan='2' class='borNone' align='right' id='unloadingButtonDelete' num='"+nextId+"'><p></p></td>\n"
                }
                html +=        "\t</tr>\n"
                html +=    "</tbody>\n"

                $(html).insertAfter("#point"+id)
            }
            removeExtraButtons('unloading',id)
            $('.ddateshort').datetimeEntry({datetimeFormat: 'Y-O-D'})
            return true
        }
    );

    // Точка погрузки удаление
    $('#loadingButtonDelete p').live ('click',
        function deleteLoadingBlock() {
            id = parseInt($('#loadingButtonDelete').attr('num')) // Определение id текущего элемента

            if (id < 2) {  // Запрет на удаление первого элемента
                return false;
            }

            nextId = parseInt(id) + 1
            nextNextId = nextId + 1
            prevId = id - 1

            unloadingAddress = $('#unloadingAddress'+id) // Определение, есть ли соседний блок разгрузки

            if (unloadingAddress.length) {

                htmlTitle = "\t\t<td id='emptyLoadingTitle"+id+"' class='borNone' colspan='5'></td>"
                $('#loadingTitle'+id).next().remove()
                $('#loadingTitle'+id).replaceWith(htmlTitle)

                htmlDate = "\t\t<td id='emptyLoadingDate"+id+"' class='borNone' colspan='5'></td>\n"
                $('#loadingDateForm'+id).next().remove()
                $('#loadingDateText'+id).remove()
                $('#loadingDateForm'+id).replaceWith(htmlDate)

                htmlAddress = "\t\t<td id='emptyLoadingAddress"+id+"' class='borNone' colspan='5'></td>\n"
                $('#loadingAddressForm'+id).next().remove()
                $('#loadingAddressText'+id).remove()
                $('#loadingAddressForm'+id).replaceWith(htmlAddress)

                htmlCompany = "\t\t<td id='emptyLoadingCompany"+id+"' class='borNone' colspan='5'></td>\n"
                $('#loadingCompanyForm'+id).next().remove()
                $('#loadingCompanyText'+id).remove()
                $('#loadingCompanyForm'+id).replaceWith(htmlCompany)

                htmlPerson = "\t\t<td id='emptyLoadingPerson"+id+"' class='borNone' colspan='5'></td>\n"
                $('#loadingPersonForm'+id).next().remove()
                $('#loadingPersonText'+id).remove()
                $('#loadingPersonForm'+id).replaceWith(htmlPerson)

                htmlMobile = "\t\t<td id='emptyLoadingMobile"+id+"' class='borNone' colspan='5'></td>\n"
                $('#loadingMobileForm'+id).next().remove()
                $('#loadingMobileText'+id).remove()
                $('#loadingMobileForm'+id).replaceWith(htmlMobile)

                htmlWorkPhone = "\t\t<td id='emptyLoadingWorkPhone"+id+"' class='borNone' colspan='5'></td>\n"
                $('#loadingWorkPhoneForm'+id).next().remove()
                $('#loadingWorkPhoneText'+id).remove()
                $('#loadingWorkPhoneForm'+id).replaceWith(htmlWorkPhone)

                htmlEmptyButton = "\t\t<td colspan='5' class='borNone' id='emptyLoadingButton"+id+"'></td>\n"
                $("#loadingButton[num="+id+"]").remove()
                $("#loadingButtonDelete[num="+id+"]").next().remove()
                $("#loadingButtonDelete[num="+id+"]").replaceWith(htmlEmptyButton)

                // Добавление кнопок добавить/удалить к концу пред. блока
                htmlButton = "\t<tr>\n"
                    // Не показывать кнопку удалить для первого элемента
                if(prevId !== 1) {
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='left' id='loadingButton' num='"+prevId+"'><p></p></td>\n"
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='right' id='loadingButtonDelete' num='"+prevId+"'><p></p></td>\n"
                    htmlButton += "\t\t<td id='emptyUnloadingButton"+prevId+"' class='borNone' colspan='5'></td>\n"
                } else {
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='left' id='loadingButton' num='"+prevId+"'><p></p></td>\n"
                    htmlButton += "\t\t<td colspan='2' class='borNone' id='loadingButtonDelete' num='"+prevId+"' style='background:none; cursor:default;'></td>\n"
                    htmlButton += "\t\t<td id='emptyUnloadingButton"+prevId+"' class='borNone' colspan='5'></td>\n"

                }
                htmlButton += "\t</tr>\n"
                $("#point"+prevId).append(htmlButton)


            } else {  //Удаление всего блока
                $("#point"+id).remove()

                // Добавление кнопок добавить/удалить к концу пред. блока
                    //Не показывать кнопку удалить для первого элемента
                if(prevId !== 1) {
                    htmlButton = "\t\t<td colspan='2' class='borNone' align='left' id='loadingButton' num='"+prevId+"'><p></p></td>\n"
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='right' id='loadingButtonDelete' num='"+prevId+"'><p></p></td>\n"
                } else {
                    htmlButton = "\t\t<td colspan='2' class='borNone' align='left' id='loadingButton' num='"+prevId+"'><p></p></td>\n"
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='left' id='loadingButtonDelete' style='background:none; cursor:default;' num='"+prevId+"'></td>\n"
                }

                if($(".extraLabel"+prevId).length > 0) {
                    $(".extraLabel"+prevId+"> td[id='none']").remove()
                    $(".extraLabel"+prevId).prepend(htmlButton)
                } else {
                    htmlButton += "<td class='fieldBetween'></td>"
                    $("#emptyLoadingButton"+prevId).replaceWith(htmlButton)
                }

            }
        }
    );

    // Точка разгрузки удаление
    $('#unloadingButtonDelete p').live ('click',
        function deleteUnloadingBlock() {
            id = parseInt($('#unloadingButtonDelete').attr('num')) // Определение id текущего элемента

            if (id < 2) {  // Запрет на удаление первого элемента
                return false;
            }

            nextId = parseInt(id) + 1
            nextNextId = nextId + 1
            prevId = id - 1

            loadingAddress = $('#loadingAddress'+id) // Определение, есть ли соседний блок погрузки

            if (loadingAddress.length) {

                htmlTitle = "\t\t<td id='emptyUnloadingTitle"+id+"' class='borNone' colspan='5'></td>"
                $('#unloadingTitle'+id).prev().remove()
                $('#unloadingTitle'+id).replaceWith(htmlTitle)

                htmlDate = "\t\t<td id='emptyUnloadingDate"+id+"' class='borNone' colspan='5'></td>\n"
                $('#unloadingDateText'+id).prev().remove()
                $('#unloadingDateText'+id).remove()
                $('#unloadingDateForm'+id).replaceWith(htmlDate)

                htmlAddress = "\t\t<td id='emptyUnloadingAddress"+id+"' class='borNone' colspan='5'></td>\n"
                $('#unloadingAddressText'+id).prev().remove()
                $('#unloadingAddressText'+id).remove()
                $('#unloadingAddressForm'+id).replaceWith(htmlAddress)

                htmlCompany = "\t\t<td id='emptyUnloadingCompany"+id+"' class='borNone' colspan='5'></td>\n"
                $('#unloadingCompanyText'+id).prev().remove()
                $('#unloadingCompanyText'+id).remove()
                $('#unloadingCompanyForm'+id).replaceWith(htmlCompany)

                htmlPerson = "\t\t<td id='emptyUnloadingPerson"+id+"' class='borNone' colspan='5'></td>\n"
                $('#unloadingPersonText'+id).prev().remove()
                $('#unloadingPersonText'+id).remove()
                $('#unloadingPersonForm'+id).replaceWith(htmlPerson)

                htmlMobile = "\t\t<td id='emptyUnloadingMobile"+id+"' class='borNone' colspan='5'></td>\n"
                $('#unloadingMobileText'+id).prev().remove()
                $('#unloadingMobileText'+id).remove()
                $('#unloadingMobileForm'+id).replaceWith(htmlMobile)

                htmlWorkPhone = "\t\t<td id='emptyUnloadingWorkPhone"+id+"' class='borNone' colspan='5'></td>\n"
                $('#unloadingWorkPhoneText'+id).prev().remove()
                $('#unloadingWorkPhoneText'+id).remove()
                $('#unloadingWorkPhoneForm'+id).replaceWith(htmlWorkPhone)

                htmlEmptyButton = "\t\t<td colspan='5' class='borNone' id='emptyUnloadingButton"+id+"'></td>\n"
                $("#unloadingButton[num="+id+"]").remove()
                $("#unloadingButtonDelete[num="+id+"]").prev().remove()
                $("#unloadingButtonDelete[num="+id+"]").replaceWith(htmlEmptyButton)

                // Добавление кнопок добавить/удалить к концу пред. блока
                htmlButton = "\t<tr>\n"
                htmlButton += "\t\t<td id='emptyLoadingButton"+prevId+"' class='borNone' colspan='5'></td>\n"
                    // Не показывать кнопку удалить для первого элемента
                if(prevId !== 1) {
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='left' id='unloadingButton' num='"+prevId+"'><p></p></td>\n"
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='right' id='unloadingButtonDelete' num='"+prevId+"'><p></p></td>\n"
                } else {
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='left' id='unloadingButton' num='"+prevId+"'><p></p></td>\n"
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='left' id='unloadingButtonDelete' style='background:none; cursor:default;' num='"+prevId+"'></td>\n"
                }
                htmlButton += "\t</tr>\n"
                $("#point"+prevId).append(htmlButton)

            } else {  //Удаление всего блока
                $("#point"+id).remove()

                // Добавление кнопок добавить/удалить к концу пред. блока
                if($(".extraLabel"+prevId).length) {
                    $(".extraLabel"+prevId+"> td[id='none']").remove()
                    htmlButton = "\t\t<td colspan='2' class='borNone' align='left' id='unloadingButton' num='"+prevId+"'><p></p></td>\n"
                    if(prevId !==1) {
                        htmlButton += "\t\t<td colspan='2' class='borNone' align='right' id='unloadingButtonDelete' num='"+prevId+"'><p></p></td>\n"
                    } else {
                        htmlButton  += "\t\t<td colspan='2' class='borNone' align='left' id='unloadingButtonDelete' style='background:none; cursor:default;' num='"+prevId+"'></td>\n"
                    }
                    $(".extraLabel"+prevId).append(htmlButton)
                } else {
                    htmlButton = "<td class='fieldBetween'></td>"
                    htmlButton += "\t\t<td colspan='2' class='borNone' align='left' id='unloadingButton' num='"+prevId+"'><p></p></td>\n"
                    if(prevId !==1) {
                        htmlButton += "\t\t<td colspan='2' class='borNone' align='right' id='unloadingButtonDelete' num='"+prevId+"'><p></p></td>\n"
                    } else {
                        htmlButton += "\t\t<td colspan='2' class='borNone' align='left' id='unloadingButtonDelete' style='background:none; cursor:default;' num='"+prevId+"'></td>\n"
                    }
                    $("#emptyUnloadingButton"+prevId).replaceWith(htmlButton)
                }
            }
        }
    );

    function removeExtraButtons (buttonType,id) {
        if (buttonType == 'loading') {
            $("#loadingButtonDelete[num="+id+"]").parent().attr('class','extraLabel'+id)
            $("#loadingButton[num="+id+"]").attr('id','none').empty()
            $("#loadingButtonDelete[num="+id+"]").attr('id','none').empty()
        }
        if (buttonType == 'unloading') {
            $("#unloadingButtonDelete[num="+id+"]").parent().attr('class','extraLabel'+id)
            $("#unloadingButton[num="+id+"]").attr('id','none').empty()
            $("#unloadingButtonDelete[num="+id+"]").attr('id','none').empty()
        }
        if($(".extraLabel"+id+" > td#none").length == 4) {    // Подчистка пустых tr
            $(".extraLabel"+id+" > td#none").parent().remove()
        }
    }

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
