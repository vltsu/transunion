$(document).ready(function() {


    startEdit()
    rateFields()
    fillFields()

    // Выбор нужной формы
    function startEdit() {

        var customerRateSummService = parseFloat($('#customerRateSummService').text())

        var carrierRateSummService = parseFloat($('#carrierRateSummService').text())

        if (customerRateSummService > 0) {
            $('.customerPayMethodButton').attr('state','dog')
            $('#cusPovr').css('font-size', '')
            $('#cusSdel').css('font-size', '16px')
        } else {
            $('.customerPayMethodButton').attr('state','povr')
            $('#cusSdel').css('font-size', '')
            $('#cusPovr').css('font-size', '16px')
        }

        if (carrierRateSummService > 0) {
            $('.carrierPayMethodButton').attr('state','dog')
            $('#carPovr').css('font-size', '')
            $('#carSdel').css('font-size', '16px')
        } else {
            $('.carrierPayMethodButton').attr('state','povr')
            $('#carSdel').css('font-size', '')
            $('#carPovr').css('font-size', '16px')
        }
    }

    // Заполнение полей
    function fillFields() {
        var customerRateSummService = parseFloat($('#customerRateSummService').text())
        var customerRateHoursService = parseFloat($('#customerRateHoursService').text())
        var customerRatePodachaHoursService = parseFloat($('#customerRatePodachaHoursService').text())
        var customerRateHourPriceService = parseFloat($('#customerRateHourPriceService').text())
        var customerRateSverhCountService = parseFloat($('#customerRateSverhCountService').text())
        var customerRateSverhPriceService = parseFloat($('#customerRateSverhPriceService').text())
        var customerRateSverhSummService = parseFloat($('#customerRateSverhSummService').text())
        var customerRateTotalSummService = parseFloat($('#customerRateTotalSummService').text())

        var carrierRateSummService = parseFloat($('#carrierRateSummService').text())
        var carrierRateHoursService = parseFloat($('#carrierRateHoursService').text())
        var carrierRatePodachaHoursService = parseFloat($('#carrierRatePodachaHoursService').text())
        var carrierRateHourPriceService = parseFloat($('#carrierRateHourPriceService').text())
        var carrierRateSverhCountService = parseFloat($('#carrierRateSverhCountService').text())
        var carrierRateSverhPriceService = parseFloat($('#carrierRateSverhPriceService').text())
        var carrierRateSverhSummService = parseFloat($('#carrierRateSverhSummService').text())
        var carrierRateTotalSummService = parseFloat($('#carrierRateTotalSummService').text())

        $('#customerRateSumm').val(customerRateSummService);
        $('#customerRateHours').val(customerRateHoursService);
        $('#customerRatePodachaHours').val(customerRatePodachaHoursService);
        $('#customerRateHourPrice').val(customerRateHourPriceService);
        $('#customerRateSverhCount').val(customerRateSverhCountService);
        $('#customerRateSverhPrice').val(customerRateSverhPriceService);
        $('#customerRateSverhSumm').val(customerRateSverhSummService);
        $('#customerRateTotalSumm').val(customerRateTotalSummService);

        $('#carrierRateSumm').val(carrierRateSummService);
        $('#carrierRateHours').val(carrierRateHoursService);
        $('#carrierRatePodachaHours').val(carrierRatePodachaHoursService);
        $('#carrierRateHourPrice').val(carrierRateHourPriceService);
        $('#carrierRateSverhCount').val(carrierRateSverhCountService);
        $('#carrierRateSverhPrice').val(carrierRateSverhPriceService);
        $('#carrierRateSverhSumm').val(carrierRateSverhSummService);
        $('#carrierRateTotalSumm').val(carrierRateTotalSummService);

    }



    // Расчёт стоимости перевозки по сдельному тарифу
    $('#customerRateSumm,#customerRateSverhPrice').live('change',
        function () {
            if($('.customerPayMethodButton').attr('state') == 'dog') {
                var customerRateSumm          = $('#customerRateSumm').val();
                var customerRateSverhPrice      = $('#customerRateSverhPrice').val();

                if (!customerRateSumm) customerRateSumm=0;
                if (!customerRateSverhPrice) customerRateSverhPrice=0;

                $('#customerRateTotalSumm').val(parseFloat(customerRateSumm));
            }
        }
    );


    $('#carrierRateSumm,#carrierRateSverhCount,#carrierRateSverhPrice').live('change',
        function () {
            if($('.carrierPayMethodButton').attr('state') == 'dog') {
                var carrierRateSumm            = $('#carrierRateSumm').val();
                var carrierRateSverhCount      = $('#carrierRateSverhCount').val();
                var carrierRateSverhPrice      = $('#carrierRateSverhPrice').val();

                if (!carrierRateSumm) carrierRateSumm=0;
                if (!carrierRateSverhCount) carrierRateSverhCount=0;
                if (!carrierRateSverhPrice) carrierRateSverhPrice=0;

                var carrierRateSverhSumm = parseFloat(carrierRateSverhCount) * parseFloat(carrierRateSverhPrice)

                $('#carrierRateSverhSumm').val(carrierRateSverhSumm);

                $('#carrierRateTotalSumm').val(carrierRateSverhSumm + parseFloat(carrierRateSumm));
            }
        }
    );

    // Расчёт стоимости перевозки по повременному тарифу
    $('#customerRateHours,#customerRatePodachaHours,#customerRateHourPrice,#customerRateSverhCount,#customerRateSverhPrice').live('change',
        function () {
            if($('.customerPayMethodButton').attr('state') == 'povr') {
                var customerRateHours          = $('#customerRateHours').val();
                var customerRatePodachaHours   = $('#customerRatePodachaHours').val();
                var customerRateHourPrice      = $('#customerRateHourPrice').val();
                var customerRateSverhCount     = $('#customerRateSverhCount').val();
                var customerRateSverhPrice     = $('#customerRateSverhPrice').val();

                if (!customerRateHours) customerRateHours=0;
                if (!customerRatePodachaHours) customerRatePodachaHours=0;
                if (!customerRateHourPrice) customerRateHourPrice=0;
                if (!customerRateSverhCount) customerRateSverhCount=0;
                if (!customerRateSverhPrice) customerRateSverhPrice=0;

                var customerRateSverhSumm = parseFloat(customerRateSverhCount) * parseFloat(customerRateSverhPrice)

                $('#customerRateSverhSumm').val(customerRateSverhSumm);

                var total = ( parseFloat(customerRateHours)+parseFloat(customerRatePodachaHours) ) * parseFloat(customerRateHourPrice) + (customerRateSverhCount * customerRateSverhPrice)
                $('#customerRateTotalSumm').val(total);
            }
        }
    );

    $('#carrierRateHours,#carrierRatePodachaHours,#carrierRateHourPrice,#carrierRateSverhCount,#carrierRateSverhPrice').live('change',
        function () {
            if($('.carrierPayMethodButton').attr('state') == 'povr') {
                var carrierRateHours          = $('#carrierRateHours').val();
                var carrierRatePodachaHours   = $('#carrierRatePodachaHours').val();
                var carrierRateHourPrice      = $('#carrierRateHourPrice').val();
                var carrierRateSverhCount     = $('#carrierRateSverhCount').val();
                var carrierRateSverhPrice     = $('#carrierRateSverhPrice').val();

                if (!carrierRateHours) carrierRateHours=0;
                if (!carrierRatePodachaHours) carrierRatePodachaHours=0;
                if (!carrierRateHourPrice) carrierRateHourPrice=0;
                if (!carrierRateSverhCount) carrierRateSverhCount=0;
                if (!carrierRateSverhPrice) carrierRateSverhPrice=0;

                var carrierRateSverhSumm = parseFloat(carrierRateSverhCount) * parseFloat(carrierRateSverhPrice)

                $('#carrierRateSverhSumm').val(carrierRateSverhSumm);

                var total = ( parseFloat(carrierRateHours)+parseFloat(carrierRatePodachaHours) ) * parseFloat(carrierRateHourPrice) + (carrierRateSverhCount * carrierRateSverhPrice)
                $('#carrierRateTotalSumm').val(total);
            }
        }
    );

    // Подсчёт общих сумм
    $('#customerDopPrabCount,#customerDopPrabPrice,\n\
        #customerDopDopTochkaPogrCount,#customerDopDopTochkaPogrPrice,#customerDopDopTochkaRazgrCount,#customerDopDopTochkaRazgrPrice,\n\
        #customerDopVozvrCount,#customerDopVozvrPrice,#customerDopPeregCount,#customerDopPeregPrice,\n\
        #customerDopNightStayCount,#customerDopNightStayPrice,#customerDopMezgorodCount,#customerDopMezgorodPrice,\n\
        #customerDopRastentovkaCount,#customerDopRastentovkaPrice,#customerDopSoprovCount,#customerDopSoprovPrice,\n\
        #customerDopNegabaritCount,#customerDopNegabaritPrice,#customerDopGruzchCount,#customerDopGruzchPrice,\n\
        #customerRateHours,#customerRatePodachaHours,#customerRateHourPrice,#customerRateSumm,#customerPrepayment,#customerRateTotalSumm,#customerRateSumm,\n\
        #customerRateSverhCount,#customerRateSverhPrice,#customerResponsibilityCarDenyPrice,#customerResponsibilityProstoyCount,\n\
        #customerResponsibilityProstoyPrice,#customerResponsibilityPaymentLateCount,#customerResponsibilityPaymentLatePrice,\n\
        #customerResponsibilityDocumentLateCount,#customerResponsibilityDocumentLatePrice,#carrierResponsibilityCarDenyPrice,#carrierResponsibilityLateCount').live('change',
            function() {
                var customerDopPrabCount           = $('#customerDopPrabCount').val();
                var customerDopPrabPrice           = $('#customerDopPrabPrice').val();
                var customerDopDopTochkaPogrCount  = $('#customerDopDopTochkaPogrCount').val();
                var customerDopDopTochkaPogrPrice  = $('#customerDopDopTochkaPogrPrice').val();
                var customerDopDopTochkaRazgrCount = $('#customerDopDopTochkaRazgrCount').val();
                var customerDopDopTochkaRazgrPrice = $('#customerDopDopTochkaRazgrPrice').val();
                var customerDopVozvrCount          = $('#customerDopVozvrCount').val();
                var customerDopVozvrPrice          = $('#customerDopVozvrPrice').val();
                var customerDopPeregCount          = $('#customerDopPeregCount').val();
                var customerDopPeregPrice          = $('#customerDopPeregPrice').val();
                var customerDopNightStayCount      = $('#customerDopNightStayCount').val();
                var customerDopNightStayPrice      = $('#customerDopNightStayPrice').val();
                var customerDopMezgorodCount       = $('#customerDopMezgorodCount').val();
                var customerDopMezgorodPrice       = $('#customerDopMezgorodPrice').val();
                var customerDopRastentovkaCount    = $('#customerDopRastentovkaCount').val();
                var customerDopRastentovkaPrice    = $('#customerDopRastentovkaPrice').val();
                var customerDopSoprovCount         = $('#customerDopSoprovCount').val();
                var customerDopSoprovPrice         = $('#customerDopSoprovPrice').val();
                var customerDopNegabaritCount      = $('#customerDopNegabaritCount').val();
                var customerDopNegabaritPrice      = $('#customerDopNegabaritPrice').val();
                var customerDopGruzchCount         = $('#customerDopGruzchCount').val();
                var customerDopGruzchPrice         = $('#customerDopGruzchPrice').val();
                var customerResponsibilitySumm     = $('#customerResponsibilitySumm').val();

                if (!customerDopPrabCount) customerDopPrabCount=0;
                if (!customerDopPrabPrice) customerDopPrabPrice=0;
                if (!customerDopDopTochkaPogrCount) customerDopDopTochkaPogrCount=0;
                if (!customerDopDopTochkaPogrPrice) customerDopDopTochkaPogrPrice=0;
                if (!customerDopDopTochkaRazgrCount) customerDopDopTochkaRazgrCount=0;
                if (!customerDopDopTochkaRazgrPrice) customerDopDopTochkaRazgrPrice=0;
                if (!customerDopVozvrCount) customerDopVozvrCount=0;
                if (!customerDopVozvrPrice) customerDopVozvrPrice=0;
                if (!customerDopPeregCount) customerDopPeregCount=0;
                if (!customerDopPeregPrice) customerDopPeregPrice=0;
                if (!customerDopNightStayCount) customerDopNightStayCount=0;
                if (!customerDopNightStayPrice) customerDopNightStayPrice=0;
                if (!customerDopMezgorodCount) customerDopMezgorodCount=0;
                if (!customerDopMezgorodPrice) customerDopMezgorodPrice=0;
                if (!customerDopRastentovkaCount) customerDopRastentovkaCount=0;
                if (!customerDopRastentovkaPrice) customerDopRastentovkaPrice=0;
                if (!customerDopSoprovCount) customerDopSoprovCount=0;
                if (!customerDopSoprovPrice) customerDopSoprovPrice=0;
                if (!customerDopNegabaritCount) customerDopNegabaritCount=0;
                if (!customerDopNegabaritPrice) customerDopNegabaritPrice=0;
                if (!customerDopGruzchCount) customerDopGruzchCount=0;
                if (!customerDopGruzchPrice) customerDopGruzchPrice=0;
                if (!customerResponsibilitySumm) customerResponsibilitySumm=0;

                var customerDopPrabSumm           = parseFloat(customerDopPrabCount)*parseFloat(customerDopPrabPrice);
                var customerDopDopTochkaPogrSumm  = parseFloat(customerDopDopTochkaPogrCount)*parseFloat(customerDopDopTochkaPogrPrice);
                var customerDopDopTochkaRazgrSumm = parseFloat(customerDopDopTochkaRazgrCount)*parseFloat(customerDopDopTochkaRazgrPrice);
                var customerDopVozvrSumm          = parseFloat(customerDopVozvrCount)/100*parseFloat(customerDopVozvrPrice);
                var customerDopPeregSumm          = parseFloat(customerDopPeregCount)*parseFloat(customerDopPeregPrice);
                var customerDopNightStaySumm      = parseFloat(customerDopNightStayCount)*parseFloat(customerDopNightStayPrice);
                var customerDopMezgorodSumm       = parseFloat(customerDopMezgorodCount)*2*parseFloat(customerDopMezgorodPrice);
                var customerDopRastentovkaSumm    = parseFloat(customerDopRastentovkaCount)*parseFloat(customerDopRastentovkaPrice);
                var customerDopSoprovSumm         = parseFloat(customerDopSoprovCount)*parseFloat(customerDopSoprovPrice);
                var customerDopNegabaritSumm      = parseFloat(customerDopNegabaritCount)/100*parseFloat(customerDopNegabaritPrice);
                var customerDopGruzchSumm         = parseFloat(customerDopGruzchCount)*parseFloat(customerDopGruzchPrice);

                $('#customerDopPrabSumm').val(customerDopPrabSumm);
                $('#customerDopDopTochkaPogrSumm').val(customerDopDopTochkaPogrSumm);
                $('#customerDopDopTochkaRazgrSumm').val(customerDopDopTochkaRazgrSumm);
                $('#customerDopVozvrSumm').val(customerDopVozvrSumm);
                $('#customerDopPeregSumm').val(customerDopPeregSumm);
                $('#customerDopNightStaySumm').val(customerDopNightStaySumm);
                $('#customerDopMezgorodSumm').val(customerDopMezgorodSumm);
                $('#customerDopRastentovkaSumm').val(customerDopRastentovkaSumm);
                $('#customerDopSoprovSumm').val(customerDopSoprovSumm);
                $('#customerDopNegabaritSumm').val(customerDopNegabaritSumm);
                $('#customerDopGruzchSumm').val(customerDopGruzchSumm);

                var total = parseFloat(customerDopPrabSumm)+parseFloat(customerDopDopTochkaPogrSumm)
                    +parseFloat(customerDopDopTochkaRazgrSumm)+parseFloat(customerDopVozvrSumm)+parseFloat(customerDopPeregSumm)+parseFloat(customerDopNightStaySumm)+parseFloat(customerDopMezgorodSumm)
                    +parseFloat(customerDopRastentovkaSumm)+parseFloat(customerDopSoprovSumm)+parseFloat(customerDopNegabaritSumm)+parseFloat(customerDopGruzchSumm)
                ;
                $('#customerDopSumm').val(total);

                // Подсчёт итоговой суммы за перевозку
                var customerRateTotalSumm = $('#customerRateTotalSumm').val();
                if ( !customerRateTotalSumm || customerRateTotalSumm == 0) {
                    var customerRateTotalSumm = $('#customerRateTotalSumm').val();
                }
                var totalSumm = parseFloat(customerRateTotalSumm) + total;
                $('#customerTotalSumm').val(totalSumm);

                // Подсчёт суммы к оплате
                var summToPay = totalSumm + parseFloat(customerResponsibilitySumm);
                $('#customerSummToPay').val(summToPay);
            }
        );

    $('#carrierDopPrabCount,#carrierDopPrabPrice,\n\
        #carrierDopDopTochkaPogrCount,#carrierDopDopTochkaPogrPrice,#carrierDopDopTochkaRazgrCount,#carrierDopDopTochkaRazgrPrice,\n\
        #carrierDopVozvrCount,#carrierDopVozvrPrice,#carrierDopPeregCount,#carrierDopPeregPrice,\n\
        #carrierDopNightStayCount,#carrierDopNightStayPrice,#carrierDopMezgorodCount,#carrierDopMezgorodPrice,\n\
        #carrierDopRastentovkaCount,#carrierDopRastentovkaPrice,#carrierDopSoprovCount,#carrierDopSoprovPrice,\n\
        #carrierDopNegabaritCount,#carrierDopNegabaritPrice,#carrierDopGruzchCount,#carrierDopGruzchPrice,\n\
        #carrierRateHours,#carrierRatePodachaHours,#carrierRateHourPrice,#carrierRateSumm,#carrierPrepayment,#carrierRateTotalSumm,#carrierRateSumm,\n\
        #carrierRateSverhCount,#carrierRateSverhPrice,#carrierResponsibilityCarDenyPrice,#carrierResponsibilityLateCount,\n\
        #carrierResponsibilityLatePrice,#carrierResponsibilityDeliveryLateCount,#carrierResponsibilityDeliveryLatePrice,#carrierResponsibilityDocumentLateCount,\n\
        #carrierResponsibilityDocumentLatePrice').live('change',
            function() {
                var carrierDopPrabCount           = $('#carrierDopPrabCount').val();
                var carrierDopPrabPrice           = $('#carrierDopPrabPrice').val();
                var carrierDopDopTochkaPogrCount  = $('#carrierDopDopTochkaPogrCount').val();
                var carrierDopDopTochkaPogrPrice  = $('#carrierDopDopTochkaPogrPrice').val();
                var carrierDopDopTochkaRazgrCount = $('#carrierDopDopTochkaRazgrCount').val();
                var carrierDopDopTochkaRazgrPrice = $('#carrierDopDopTochkaRazgrPrice').val();
                var carrierDopVozvrCount          = $('#carrierDopVozvrCount').val();
                var carrierDopVozvrPrice          = $('#carrierDopVozvrPrice').val();
                var carrierDopPeregCount          = $('#carrierDopPeregCount').val();
                var carrierDopPeregPrice          = $('#carrierDopPeregPrice').val();
                var carrierDopNightStayCount      = $('#carrierDopNightStayCount').val();
                var carrierDopNightStayPrice      = $('#carrierDopNightStayPrice').val();
                var carrierDopMezgorodCount       = $('#carrierDopMezgorodCount').val();
                var carrierDopMezgorodPrice       = $('#carrierDopMezgorodPrice').val();
                var carrierDopRastentovkaCount    = $('#carrierDopRastentovkaCount').val();
                var carrierDopRastentovkaPrice    = $('#carrierDopRastentovkaPrice').val();
                var carrierDopSoprovCount         = $('#carrierDopSoprovCount').val();
                var carrierDopSoprovPrice         = $('#carrierDopSoprovPrice').val();
                var carrierDopNegabaritCount      = $('#carrierDopNegabaritCount').val();
                var carrierDopNegabaritPrice      = $('#carrierDopNegabaritPrice').val();
                var carrierDopGruzchCount         = $('#carrierDopGruzchCount').val();
                var carrierDopGruzchPrice         = $('#carrierDopGruzchPrice').val();
                var carrierResponsibilitySumm     = $('#carrierResponsibilitySumm').val();

                if (!carrierDopPrabCount) carrierDopPrabCount=0;
                if (!carrierDopPrabPrice) carrierDopPrabPrice=0;
                if (!carrierDopDopTochkaPogrCount) carrierDopDopTochkaPogrCount=0;
                if (!carrierDopDopTochkaPogrPrice) carrierDopDopTochkaPogrPrice=0;
                if (!carrierDopDopTochkaRazgrCount) carrierDopDopTochkaRazgrCount=0;
                if (!carrierDopDopTochkaRazgrPrice) carrierDopDopTochkaRazgrPrice=0;
                if (!carrierDopVozvrCount) carrierDopVozvrCount=0;
                if (!carrierDopVozvrPrice) carrierDopVozvrPrice=0;
                if (!carrierDopPeregCount) carrierDopPeregCount=0;
                if (!carrierDopPeregPrice) carrierDopPeregPrice=0;
                if (!carrierDopNightStayCount) carrierDopNightStayCount=0;
                if (!carrierDopNightStayPrice) carrierDopNightStayPrice=0;
                if (!carrierDopMezgorodCount) carrierDopMezgorodCount=0;
                if (!carrierDopMezgorodPrice) carrierDopMezgorodPrice=0;
                if (!carrierDopRastentovkaCount) carrierDopRastentovkaCount=0;
                if (!carrierDopRastentovkaPrice) carrierDopRastentovkaPrice=0;
                if (!carrierDopSoprovCount) carrierDopSoprovCount=0;
                if (!carrierDopSoprovPrice) carrierDopSoprovPrice=0;
                if (!carrierDopNegabaritCount) carrierDopNegabaritCount=0;
                if (!carrierDopNegabaritPrice) carrierDopNegabaritPrice=0;
                if (!carrierDopGruzchCount) carrierDopGruzchCount=0;
                if (!carrierDopGruzchPrice) carrierDopGruzchPrice=0;
                if (!carrierResponsibilitySumm) carrierResponsibilitySumm=0;

                var carrierDopPrabSumm           = parseFloat(carrierDopPrabCount)*parseFloat(carrierDopPrabPrice);
                var carrierDopDopTochkaPogrSumm  = parseFloat(carrierDopDopTochkaPogrCount)*parseFloat(carrierDopDopTochkaPogrPrice);
                var carrierDopDopTochkaRazgrSumm = parseFloat(carrierDopDopTochkaRazgrCount)*parseFloat(carrierDopDopTochkaRazgrPrice);
                var carrierDopVozvrSumm          = parseFloat(carrierDopVozvrCount)/100*parseFloat(carrierDopVozvrPrice);
                var carrierDopPeregSumm          = parseFloat(carrierDopPeregCount)*parseFloat(carrierDopPeregPrice);
                var carrierDopNightStaySumm      = parseFloat(carrierDopNightStayCount)*parseFloat(carrierDopNightStayPrice);
                var carrierDopMezgorodSumm       = parseFloat(carrierDopMezgorodCount)*2*parseFloat(carrierDopMezgorodPrice);
                var carrierDopRastentovkaSumm    = parseFloat(carrierDopRastentovkaCount)*parseFloat(carrierDopRastentovkaPrice);
                var carrierDopSoprovSumm         = parseFloat(carrierDopSoprovCount)*parseFloat(carrierDopSoprovPrice);
                var carrierDopNegabaritSumm      = parseFloat(carrierDopNegabaritCount)/100*parseFloat(carrierDopNegabaritPrice);
                var carrierDopGruzchSumm         = parseFloat(carrierDopGruzchCount)*parseFloat(carrierDopGruzchPrice);

                $('#carrierDopPrabSumm').val(carrierDopPrabSumm);
                $('#carrierDopDopTochkaPogrSumm').val(carrierDopDopTochkaPogrSumm);
                $('#carrierDopDopTochkaRazgrSumm').val(carrierDopDopTochkaRazgrSumm);
                $('#carrierDopVozvrSumm').val(carrierDopVozvrSumm);
                $('#carrierDopPeregSumm').val(carrierDopPeregSumm);
                $('#carrierDopNightStaySumm').val(carrierDopNightStaySumm);
                $('#carrierDopMezgorodSumm').val(carrierDopMezgorodSumm);
                $('#carrierDopRastentovkaSumm').val(carrierDopRastentovkaSumm);
                $('#carrierDopSoprovSumm').val(carrierDopSoprovSumm);
                $('#carrierDopNegabaritSumm').val(carrierDopNegabaritSumm);
                $('#carrierDopGruzchSumm').val(carrierDopGruzchSumm);

                var total = parseFloat(carrierDopPrabSumm)+parseFloat(carrierDopDopTochkaPogrSumm)
                    +parseFloat(carrierDopDopTochkaRazgrSumm)+parseFloat(carrierDopVozvrSumm)+parseFloat(carrierDopPeregSumm)+parseFloat(carrierDopNightStaySumm)+parseFloat(carrierDopMezgorodSumm)
                    +parseFloat(carrierDopRastentovkaSumm)+parseFloat(carrierDopSoprovSumm)+parseFloat(carrierDopNegabaritSumm)+parseFloat(carrierDopGruzchSumm)
                ;
                $('#carrierDopSumm').val(total);

                // Подсчёт итоговой суммы за перевозку
                var carrierRateTotalSumm = $('#carrierRateTotalSumm').val();
                if ( !carrierRateTotalSumm || carrierRateTotalSumm == 0 ) {
                    var carrierRateTotalSumm = $('#carrierRateTotalSumm').val();
                }

                var totalSumm = parseFloat(carrierRateTotalSumm) + total;
                $('#carrierTotalSumm').val(totalSumm);

                // Подсчёт суммы к оплате
                var summToPay = totalSumm + parseFloat(carrierResponsibilitySumm);
                $('#carrierSummToPay').val(summToPay);
            }
    );

    // Расчёт ответственности сторон
    $('#customerResponsibilityCarDenyPrice,#customerResponsibilityProstoyCount,\n\
        #customerResponsibilityProstoyPrice,#customerResponsibilityPaymentLateCount,#customerResponsibilityPaymentLatePrice,\n\
        #customerResponsibilityDocumentLateCount,#customerResponsibilityDocumentLatePrice,#carrierResponsibilityCarDenyPrice,#carrierResponsibilityLateCount,\n\
        #carrierResponsibilityLatePrice,#carrierResponsibilityDeliveryLateCount,#carrierResponsibilityDeliveryLatePrice,#carrierResponsibilityDocumentLateCount,\n\
        #carrierResponsibilityDocumentLatePrice,#customerRateSumm, #carrierRateSumm').live('change', function() {

          var customerResponsibilityCarDenyPrice      = $('#customerResponsibilityCarDenyPrice').val();
          var customerResponsibilityProstoyCount      = $('#customerResponsibilityProstoyCount').val();
          var customerResponsibilityProstoyPrice      = $('#customerResponsibilityProstoyPrice').val();
          var customerResponsibilityPaymentLateCount  = $('#customerResponsibilityPaymentLateCount').val();
          var customerResponsibilityPaymentLatePrice  = $('#customerResponsibilityPaymentLatePrice').val();
          var customerResponsibilityDocumentLateCount = $('#customerResponsibilityDocumentLateCount').val();
          var customerResponsibilityDocumentLatePrice = $('#customerResponsibilityDocumentLatePrice').val();
          var carrierResponsibilityCarDenyPrice       = $('#carrierResponsibilityCarDenyPrice').val();
          var carrierResponsibilityLateCount       = $('#carrierResponsibilityLateCount').val();
          var carrierResponsibilityLatePrice       = $('#carrierResponsibilityLatePrice').val();
          var carrierResponsibilityDeliveryLateCount   = $('#carrierResponsibilityDeliveryLateCount').val();
          var carrierResponsibilityDeliveryLatePrice   = $('#carrierResponsibilityDeliveryLatePrice').val();
          var carrierResponsibilityDocumentLateCount  = $('#carrierResponsibilityDocumentLateCount').val();
          var carrierResponsibilityDocumentLatePrice  = $('#carrierResponsibilityDocumentLatePrice').val();
          var carrierTotalSumm   = $('#carrierTotalSumm').val();
          var customerTotalSumm  = $('#customerTotalSumm').val();

          if (!customerResponsibilityCarDenyPrice) customerResponsibilityCarDenyPrice=0;
          if (!customerResponsibilityProstoyCount) customerResponsibilityProstoyCount=0;
          if (!customerResponsibilityProstoyPrice) customerResponsibilityProstoyPrice=0;
          if (!customerResponsibilityPaymentLateCount) customerResponsibilityPaymentLateCount=0;
          if (!customerResponsibilityPaymentLatePrice) customerResponsibilityPaymentLatePrice=0;
          if (!customerResponsibilityDocumentLateCount) customerResponsibilityDocumentLateCount=0;
          if (!customerResponsibilityDocumentLatePrice) customerResponsibilityDocumentLatePrice=0;
          if (!carrierResponsibilityCarDenyPrice) carrierResponsibilityCarDenyPrice=0;
          if (!carrierResponsibilityLateCount) carrierResponsibilityLateCount=0;
          if (!carrierResponsibilityLatePrice) carrierResponsibilityLatePrice=0;
          if (!carrierResponsibilityDeliveryLateCount) carrierResponsibilityDeliveryLateCount=0;
          if (!carrierResponsibilityDeliveryLatePrice) carrierResponsibilityDeliveryLatePrice=0;
          if (!carrierResponsibilityDocumentLateCount) carrierResponsibilityDocumentLateCount=0;
          if (!carrierResponsibilityDocumentLatePrice) carrierResponsibilityDocumentLatePrice=0;

          var customerResponsibilityCarDenySumm      = (parseFloat(customerResponsibilityCarDenyPrice) / 100) * parseFloat(customerTotalSumm);
          var customerResponsibilityProstoySumm      = parseFloat(customerResponsibilityProstoyCount) * (parseFloat(customerResponsibilityProstoyPrice) / 100 * parseFloat(customerTotalSumm));
          var customerResponsibilityPaymentLateSumm  = parseFloat(customerResponsibilityPaymentLateCount) * (parseFloat(customerResponsibilityPaymentLatePrice) / 100  * parseFloat(customerTotalSumm));
          var customerResponsibilityDocumentLateSumm = parseFloat(customerResponsibilityDocumentLateCount) * (parseFloat(customerResponsibilityDocumentLatePrice / 100  * parseFloat(customerTotalSumm)));
          var carrierResponsibilityCarDenySumm       = parseFloat(carrierResponsibilityCarDenyPrice) / 100  * parseFloat(carrierTotalSumm);
          var carrierResponsibilityLateSumm          = parseFloat(carrierResponsibilityLateCount) * (parseFloat(carrierResponsibilityLatePrice) / 100  * parseFloat(carrierTotalSumm));
          var carrierResponsibilityDeliveryLateSumm  = parseFloat(carrierResponsibilityDeliveryLateCount) * (parseFloat(carrierResponsibilityDeliveryLatePrice) / 100  * parseFloat(carrierTotalSumm));
          var carrierResponsibilityDocumentLateSumm  = parseFloat(carrierResponsibilityDocumentLateCount) * (parseFloat(carrierResponsibilityDocumentLatePrice) / 100  * parseFloat(carrierTotalSumm));

          $('#customerResponsibilityCarDenySumm').val(customerResponsibilityCarDenySumm);
          $('#customerResponsibilityProstoySumm').val(customerResponsibilityProstoySumm);
          $('#customerResponsibilityPaymentLateSumm').val(customerResponsibilityPaymentLateSumm);
          $('#customerResponsibilityDocumentLateSumm').val(customerResponsibilityDocumentLateSumm);
          $('#carrierResponsibilityCarDenySumm').val(carrierResponsibilityCarDenySumm);
          $('#carrierResponsibilityLateSumm').val(carrierResponsibilityLateSumm);
          $('#carrierResponsibilityDeliveryLateSumm').val(carrierResponsibilityDeliveryLateSumm);
          $('#carrierResponsibilityDocumentLateSumm').val(carrierResponsibilityDocumentLateSumm);

          var customerTotal = parseFloat(customerResponsibilityCarDenySumm)+parseFloat(customerResponsibilityProstoySumm)
              +parseFloat(customerResponsibilityPaymentLateSumm)+parseFloat(customerResponsibilityDocumentLateSumm);

          var carrierTotal = parseFloat(carrierResponsibilityCarDenySumm)+parseFloat(carrierResponsibilityLateSumm)
              +parseFloat(carrierResponsibilityDeliveryLateSumm)+parseFloat(carrierResponsibilityDocumentLateSumm);

          $('#customerResponsibilitySumm').val(customerTotal);
          $('#carrierResponsibilitySumm').val(carrierTotal);

      }
    );

    // Изменение статуса кнопок при нажатии
    $('.customerPayMethodButton').live('click',
        function () {
            var dogTarif = $('#carrierRateSumm').attr('value')
            var minVremRab = $('#carrierRateHours').attr('value')
            var vremPodach = $('#carrierRatePodachaHours').attr('value')
            var hourPrice  = $('#carrierRateHourPrice').attr('value')
            var daleeHours = $('#carrierRateSverhCount').attr('value')
            var daleePrice = $('#carrierRateSverhPrice').attr('value')
            var daleeSumm  = $('#carrierRateSverhSumm').attr('value')
            var totalSumm  = $('#carrierRateTotalSumm').attr('value')
            var carrierValues = {
                dogTarif: dogTarif,
                minVremRab: minVremRab,
                vremPodach: vremPodach,
                hourPrice: hourPrice,
                daleeHours: daleeHours,
                daleePrice: daleePrice,
                daleeSumm: daleeSumm,
                totalSumm: totalSumm
            }
            if ($('.customerPayMethodButton').attr('state') == 'dog') {
                $('.customerPayMethodButton').attr('state','povr')
                $('#cusSdel').css('font-size', '')
                $('#cusPovr').css('font-size', '16px')
            } else {
                $('.customerPayMethodButton').attr('state','dog')
                $('#cusPovr').css('font-size', '')
                $('#cusSdel').css('font-size', '16px')
            }
            rateFields(carrierValues,0)
        }
    )

    $('.carrierPayMethodButton').live('click',
        function () {
            var dogTarif   = $('#customerRateSumm').attr('value')
            var minVremRab = $('#customerRateHours').attr('value')
            var vremPodach = $('#customerRatePodachaHours').attr('value')
            var hourPrice  = $('#customerRateHourPrice').attr('value')
            var daleeHours = $('#customerRateSverhCount').attr('value')
            var daleePrice = $('#customerRateSverhPrice').attr('value')
            var daleeSumm  = $('#customerRateSverhSumm').attr('value')
            var totalSumm  = $('#customerRateTotalSumm').attr('value')
            var customerValues = {
                dogTarif: dogTarif,
                minVremRab: minVremRab,
                vremPodach: vremPodach,
                hourPrice: hourPrice,
                daleeHours: daleeHours,
                daleePrice: daleePrice,
                daleeSumm: daleeSumm,
                totalSumm: totalSumm
            }
            if ($('.carrierPayMethodButton').attr('state') == 'dog') {
                $('.carrierPayMethodButton').attr('state','povr')
                $('#carSdel').css('font-size', '')
                $('#carPovr').css('font-size', '16px')
            } else {
                $('.carrierPayMethodButton').attr('state','dog')
                $('#carPovr').css('font-size', '')
                $('#carSdel').css('font-size', '16px')
            }
            rateFields(0,customerValues)
        }
    )

    function rateFields(carrierValues,customerValues) {
        cusDogTarif     = ''
        cusMinVremRab   = ''
        cusVremPodach   = ''
        cusHourPrice    = ''
        cusDaleeHours   = ''
        cusDaleePrice   = ''
        cusDaleeSumm    = ''
        cusTotalSumm    = ''
        carDogTarif     = ''
        carMinVremRab   = ''
        carVremPodach   = ''
        carHourPrice    = ''
        carDaleeHours   = ''
        carDaleePrice   = ''
        carDaleeSumm    = ''
        carTotalSumm    = ''

        if (!$.isEmptyObject(carrierValues)) {
            carDogTarif    = carrierValues['dogTarif']
            carMinVremRab  = carrierValues['minVremRab']
            carVremPodach  = carrierValues['vremPodach']
            carHourPrice   = carrierValues['hourPrice']
            carDaleeHours  = carrierValues['daleeHours']
            carDaleePrice  = carrierValues['daleePrice']
            carDaleeSumm   = carrierValues['daleeSumm']
            carTotalSumm   = carrierValues['totalSumm']
        }
        if (!$.isEmptyObject(customerValues)) {
            cusDogTarif     = customerValues['dogTarif']
            cusMinVremRab   = customerValues['minVremRab']
            cusVremPodach   = customerValues['vremPodach']
            cusHourPrice    = customerValues['hourPrice']
            cusDaleeHours   = customerValues['daleeHours']
            cusDaleePrice   = customerValues['daleePrice']
            cusDaleeSumm    = customerValues['daleeSumm']
            cusTotalSumm    = customerValues['totalSumm']
        }

        if ($('.customerPayMethodButton').attr('state') == 'dog' && $('.carrierPayMethodButton').attr('state') == 'dog') {
            html = "\t<tbody id='rateVariants'><tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerTopLeft'>По договорному тарифу:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer dog fieldInnerTopRight'>\n"
            html +=	"\t\t<input type='text' name='request[customer_rate_summ]' id='customerRateSumm' value='"+cusDogTarif+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerTopLeft'>По договорному тарифу:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier dog fieldInnerTopRight'>\n"
            html +=	"\t\t<input type='text' name='request[carrier_rate_summ]' id='carrierRateSumm' value='"+carDogTarif+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerBottomLeft customerNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight customerNext'>\n"
            html +=	"\t\t<input type='text' name='request[customer_rate_sverh_price]' id='customerRateSverhPrice' value='"+cusDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerBottomLeft carrierNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight'>\n"
            html +=	"\t\t<input type='text' name='request[carrier_rate_sverh_price]' id='carrierRateSverhPrice' value='"+carDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td class='borNone customerTotal' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='customer fieldName fieldInnerBottomLeft customerTotal' style='border-top: 1px solid black;' >\n"
            html +=	"\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='customer sdel fieldInnerBottomRight customerTotal' style='border-top: 1px solid black;'>\n"
            html +=	"\t\t<input type='text' name='request[customer_rate_total_summ]' id='customerRateTotalSumm' value='"+cusTotalSumm+"' class='summ' readonly='readonly' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='borNone' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='carrier fieldName fieldInnerBottomLeft carrierTotal' style='border-top: 1px solid black;'>\n"
            html +=	"\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='carrier sdel fieldInnerBottomRight' style='border-top: 1px solid black;'>\n"
            html +=	"\t\t<input type='text' name='request[carrier_rate_total_summ]' id='carrierRateTotalSumm' value='"+carTotalSumm+"' class='summ' readonly='readonly' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr></tbody>\n"
            $('#rateVariants').replaceWith(html)
        }
        if ($('.customerPayMethodButton').attr('state') == 'povr' && $('.carrierPayMethodButton').attr('state') == 'povr') {
            html = "\t<tbody id='rateVariants'><tr>\n"
            html +=     "\t\t<td class='customer fieldName fieldInnerTopLeft customerPaymentPovrem1'>Мин.вр. работы:</td>\n"
            html +=    "\t\t<td class='customer fieldInnerMediumTop'>\n"
            html +=        "\t\t<input type='text' name='request[customer_rate_hours]' id='customerRateHours' value='"+cusMinVremRab+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.</td>\n"
            html +=    "\t\t<td class='customer fieldName fieldInnerMediumTop'  >Время подачи:</td>\n"
            html +=    "\t\t<td class='customer fieldInnerTopRight'>\n"
            html +=       "\t\t <input type='text' name='request[customer_rate_podacha_hours]' id='customerRatePodachaHours' value='"+cusVremPodach+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='carrier fieldName fieldInnerTopLeft carrierPaymentPovrem1'>Мин.вр. работы:</td>\n"
            html +=    "\t\t<td class='carrier fieldInnerMediumTop'>\n"
            html +=        "\t\t<input type='text' name='request[carrier_rate_hours]' id='carrierRateHours' value='"+carMinVremRab+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='carrier fieldName fieldInnerMediumTop'>Время подачи:</td>\n"
            html +=    "\t\t<td class='carrier fieldInnerTopRight'>\n"
            html +=        "\t\t<input type='text' name='request[carrier_rate_podacha_hours]' id='carrierRatePodachaHours' value='"+carVremPodach+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerMiddleLeft customerPaymentPovrem2'>Цена за час:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight'>\n"
            html +=    "\t\t<input type='text' name='request[customer_rate_hour_price]' id='customerRateHourPrice' value='"+cusHourPrice+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerMiddleLeft carrierPaymentPovrem2'  >Цена за час:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight'>\n"
            html +=         "\t\t<input type='text' name='request[carrier_rate_hour_price]' id='carrierRateHourPrice' value='"+carHourPrice+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerBottomLeft customerNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight customerNext'>\n"
            html +=	"\t\t<input type='text' name='request[customer_rate_sverh_price]' id='customerRateSverhPrice' value='"+cusDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerBottomLeft carrierNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight'>\n"
            html +=	"\t\t<input type='text' name='request[carrier_rate_sverh_price]' id='carrierRateSverhPrice' value='"+carDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td class='borNone customerTotal' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='customer fieldName fieldInnerBottomLeft customerTotal' style='border-top: 1px solid black;' >\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span></td>\n"
            html +=    "\t\t<td colspan='1' class='customer sdel fieldInnerBottomRight customerTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request[customer_rate_total_summ]' id='customerRateTotalSumm' value='"+cusTotalSumm+"' class='summ' readonly='readonly' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='borNone' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='carrier fieldName fieldInnerBottomLeft carrierTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='carrier sdel fieldInnerBottomRight' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request[carrier_rate_total_summ]' id='carrierRateTotalSumm' value='"+carTotalSumm+"' class='summ' readonly='readonly' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr></tbody>\n"
            $('#rateVariants').replaceWith(html)
        }
        if ($('.customerPayMethodButton').attr('state') == 'dog' && $('.carrierPayMethodButton').attr('state') == 'povr') {
            html =  "\t<tbody id='rateVariants'><tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerTopLeft customerPaymentSdeln'>По договорному тарифу:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer dog fieldInnerTopRight'>\n"
            html +=        "\t\t<input type='text' name='request[customer_rate_summ]' id='customerRateSumm' value='"+cusDogTarif+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='carrier fieldName fieldInnerTopLeft carrierPaymentPovrem1'  >Мин.вр. работы:</td>\n"
            html +=    "\t\t<td class='carrier fieldInnerMediumTop'>\n"
            html +=        "\t\t<input type='text' name='request[carrier_rate_hours]' id='carrierRateHours' value='"+carMinVremRab+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='carrier fieldName fieldInnerMediumTop'  >Время подачи:</td>\n"
            html +=    "\t\t<td class='carrier fieldInnerTopRight'>\n"
            html +=         "\t\t<input type='text' name='request[carrier_rate_podacha_hours]' id='carrierRatePodachaHours' value='"+carVremPodach+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerBottomLeft customerNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight customerNext'>\n"
            html +=        "\t\t<input type='text' name='request[customer_rate_sverh_price]' id='customerRateSverhPrice' value='"+cusDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerMiddleLeft carrierPaymentPovrem2'>Цена за час:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight'>\n"
            html +=        "\t\t<input type='text' name='request[carrier_rate_hour_price]' id='carrierRateHourPrice' value='"+carHourPrice+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td class='borNone customerTotal' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='customer fieldName fieldInnerBottomLeft customerTotal' style='border-top: 1px solid black;' >\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=     "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='customer sdel fieldInnerBottomRight customerTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request[customer_rate_total_summ]' id='customerRateTotalSumm' value='"+cusTotalSumm+"' class='summ' readonly='readonly' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerBottomLeft carrierNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight carrierNext'>\n"
            html +=        "\t\t<input type='text' name='request[carrier_rate_sverh_price]' id='carrierRateSverhPrice' value='"+carDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td class='borNone' colspan='4'></td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='borNone' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='carrier fieldName fieldInnerBottomLeft carrierTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='carrier sdel fieldInnerBottomRight' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request[carrier_rate_total_summ]' id='carrierRateTotalSumm' value='"+carTotalSumm+"' class='summ' readonly='readonly' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr></tbody>\n"
            $('#rateVariants').replaceWith(html)
        }
        if ($('.customerPayMethodButton').attr('state') == 'povr' && $('.carrierPayMethodButton').attr('state') == 'dog') {
            html = "\t<tbody id='rateVariants'><tr>\n"
            html +=    "\t\t<td class='customer fieldName fieldInnerTopLeft customerPaymentPovrem1'  >Мин.вр. работы:</td>\n"
            html +=    "\t\t<td class='customer fieldInnerMediumTop'>\n"
            html +=        "\t\t<input type='text' name='request[customer_rate_hours]' id='customerRateHours' value='"+cusMinVremRab+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='customer fieldName fieldInnerMediumTop'  >Время подачи:</td>\n"
            html +=    "\t\t<td class='customer fieldInnerTopRight'>\n"
            html +=        "\t\t<input type='text' name='request[customer_rate_podacha_hours]' id='customerRatePodachaHours' value='"+cusVremPodach+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerTopLeft carrierPaymentSdeln'>По договорному тарифу:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier dog fieldInnerTopRight carrierPaymentSdeln'>\n"
            html +=        "\t\t<input type='text' name='request[carrier_rate_summ]' id='carrierRateSumm' value='"+carDogTarif+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerMiddleLeft customerPaymentPovrem2'  >Цена за час:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight'>\n"
            html +=        "\t\t<input type='text' name='request[customer_rate_hour_price]' id='customerRateHourPrice' value='"+cusHourPrice+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerBottomLeft customerNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight customerNext'>\n"
            html +=        "\t\t<input type='text' name='request[carrier_rate_sverh_price]' id='carrierRateSverhPrice' value='"+cusDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerBottomLeft carrierNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight carrierNext'>\n"
            html +=        "\t\t<input type='text' name='request[customer_rate_sverh_price]' id='customerRateSverhPrice' value='"+carDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='borNone' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='carrier fieldName fieldInnerBottomLeft carrierTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='carrier sdel fieldInnerBottomRight' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request[carrier_rate_total_summ]' id='carrierRateTotalSumm' value='"+carTotalSumm+"' class='summ' readonly='readonly' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td class='borNone customerTotal' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='customer fieldName fieldInnerBottomLeft customerTotal' style='border-top: 1px solid black;' >\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='customer sdel fieldInnerBottomRight customerTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request[customer_rate_total_summ]' id='customerRateTotalSumm' value='"+cusTotalSumm+"' class='summ' readonly='readonly' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='4' class='borNone'></td>\n"
            html += "\t</tr></tbody>\n"
            $('#rateVariants').replaceWith(html)
        }
    }

});
