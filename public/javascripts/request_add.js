$(document).ready(function() {

    // Расчёт стоимости перевозки по сдельному тарифу
    $('#customerRateSumm,#customerRateSverhCount,#customerRateSverhPrice').live('change',
        function () {
            if($('.customerPayMethodButton').attr('state') == 'dog') {
                var customerRateSumm          = $('#customerRateSumm').val();
                var customerRateSverhCount    = $('#customerRateSverhCount').val();
                var customerRateSverhPrice     = $('#customerRateSverhPrice').val();

                if (!customerRateSumm) customerRateSumm=0;
                if (!customerRateSverhCount) customerRateSverhCount=0;
                if (!customerRateSverhPrice) customerRateSverhPrice=0;

                var customerRateSverhSumm = parseFloat(customerRateSverhCount) * parseFloat(customerRateSverhPrice)

                $('#customerRateSverhSumm').val(customerRateSverhSumm);

                var total =  parseFloat(customerRateSumm) + (parseFloat(customerRateSverhCount) * parseFloat(customerRateSverhPrice))
                $('#request_customer_rate_total_summ').val(total);
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

                $('#request_carrier_rate_total_summ').val(carrierRateSverhSumm + parseFloat(carrierRateSumm));
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
                $('#request_customer_rate_total_summ').val(total);
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
                $('#request_carrier_rate_total_summ').val(total);
            }
        }
    );


    // Подсчёт общих сумм
    $('#request_customer_dop_prab_count,#request_customer_dop_prab_price,\n\
        #request_customer_dop_dop_tochka_pogr_count,#request_customer_dop_dop_tochka_pogr_price,#request_customer_dop_dop_tochka_razgr_count,#request_customer_dop_dop_tochka_razgr_price,\n\
        #request_customer_dop_vozvr_count,#request_customer_dop_vozvr_price,#request_customer_dop_pereg_count,#request_customer_dop_pereg_price,\n\
        #request_customer_dop_night_stay_count,#request_customer_dop_night_stay_price,#request_customer_dop_mezgorod_count,#request_customer_dop_mezgorod_price,\n\
        #request_customer_dop_rastentovka_count,#request_customer_dop_rastentovka_price,#request_customer_dop_soprov_count,#request_customer_dop_soprov_price,\n\
        #request_customer_dop_negabarit_count,#request_customer_dop_negabarit_price,#request_customer_dop_gruzch_count,#request_customer_dop_gruzch_price,\n\
        #customerRateHours,#customerRatePodachaHours,#customerRateHourPrice,#customerRateSumm,#customerPrepayment,#request_customer_rate_total_summ,#customerRateSumm\n\
        #customerRateSverhCount,#customerRateSverhPrice').live('change',
            function() {
                var request_customer_dop_prab_count           = $('#request_customer_dop_prab_count').val();
                var request_customer_dop_prab_price           = $('#request_customer_dop_prab_price').val();
                var request_customer_dop_dop_tochka_pogr_count  = $('#request_customer_dop_dop_tochka_pogr_count').val();
                var request_customer_dop_dop_tochka_pogr_price  = $('#request_customer_dop_dop_tochka_pogr_price').val();
                var request_customer_dop_dop_tochka_razgr_count = $('#request_customer_dop_dop_tochka_razgr_count').val();
                var request_customer_dop_dop_tochka_razgr_price = $('#request_customer_dop_dop_tochka_razgr_price').val();
                var request_customer_dop_vozvr_count          = $('#request_customer_dop_vozvr_count').val();
                var request_customer_dop_vozvr_price          = $('#request_customer_dop_vozvr_price').val();
                var request_customer_dop_pereg_count          = $('#request_customer_dop_pereg_count').val();
                var request_customer_dop_pereg_price          = $('#request_customer_dop_pereg_price').val();
                var request_customer_dop_night_stay_count      = $('#request_customer_dop_night_stay_count').val();
                var request_customer_dop_night_stay_price      = $('#request_customer_dop_night_stay_price').val();
                var request_customer_dop_mezgorod_count       = $('#request_customer_dop_mezgorod_count').val();
                var request_customer_dop_mezgorod_price       = $('#request_customer_dop_mezgorod_price').val();
                var request_customer_dop_rastentovka_count    = $('#request_customer_dop_rastentovka_count').val();
                var request_customer_dop_rastentovka_price    = $('#request_customer_dop_rastentovka_price').val();
                var request_customer_dop_soprov_count         = $('#request_customer_dop_soprov_count').val();
                var request_customer_dop_soprov_price         = $('#request_customer_dop_soprov_price').val();
                var request_customer_dop_negabarit_count      = $('#request_customer_dop_negabarit_count').val();
                var request_customer_dop_negabarit_price      = $('#request_customer_dop_negabarit_price').val();
                var request_customer_dop_gruzch_count         = $('#request_customer_dop_gruzch_count').val();
                var request_customer_dop_gruzch_price         = $('#request_customer_dop_gruzch_price').val();

                if (!request_customer_dop_prab_count) request_customer_dop_prab_count=0;
                if (!request_customer_dop_prab_price) request_customer_dop_prab_price=0;
                if (!request_customer_dop_dop_tochka_pogr_count) request_customer_dop_dop_tochka_pogr_count=0;
                if (!request_customer_dop_dop_tochka_pogr_price) request_customer_dop_dop_tochka_pogr_price=0;
                if (!request_customer_dop_dop_tochka_razgr_count) request_customer_dop_dop_tochka_razgr_count=0;
                if (!request_customer_dop_dop_tochka_razgr_price) request_customer_dop_dop_tochka_razgr_price=0;
                if (!request_customer_dop_vozvr_count) request_customer_dop_vozvr_count=0;
                if (!request_customer_dop_vozvr_price) request_customer_dop_vozvr_price=0;
                if (!request_customer_dop_pereg_count) request_customer_dop_pereg_count=0;
                if (!request_customer_dop_pereg_price) request_customer_dop_pereg_price=0;
                if (!request_customer_dop_night_stay_count) request_customer_dop_night_stay_count=0;
                if (!request_customer_dop_night_stay_price) request_customer_dop_night_stay_price=0;
                if (!request_customer_dop_mezgorod_count) request_customer_dop_mezgorod_count=0;
                if (!request_customer_dop_mezgorod_price) request_customer_dop_mezgorod_price=0;
                if (!request_customer_dop_rastentovka_count) request_customer_dop_rastentovka_count=0;
                if (!request_customer_dop_rastentovka_price) request_customer_dop_rastentovka_price=0;
                if (!request_customer_dop_soprov_count) request_customer_dop_soprov_count=0;
                if (!request_customer_dop_soprov_price) request_customer_dop_soprov_price=0;
                if (!request_customer_dop_negabarit_count) request_customer_dop_negabarit_count=0;
                if (!request_customer_dop_negabarit_price) request_customer_dop_negabarit_price=0;
                if (!request_customer_dop_gruzch_count) request_customer_dop_gruzch_count=0;
                if (!request_customer_dop_gruzch_price) request_customer_dop_gruzch_price=0;

                var request_customer_dop_prab_summ           = parseFloat(request_customer_dop_prab_count)*parseFloat(request_customer_dop_prab_price);
                var request_customer_dop_dop_tochka_pogr_summ  = parseFloat(request_customer_dop_dop_tochka_pogr_count)*parseFloat(request_customer_dop_dop_tochka_pogr_price);
                var request_customer_dop_dop_tochka_razgr_summ = parseFloat(request_customer_dop_dop_tochka_razgr_count)*parseFloat(request_customer_dop_dop_tochka_razgr_price);
                var request_customer_dop_vozvr_summ          = parseFloat(request_customer_dop_vozvr_count)/100*parseFloat(request_customer_dop_vozvr_price);
                var request_customer_dop_pereg_summ          = parseFloat(request_customer_dop_pereg_count)*parseFloat(request_customer_dop_pereg_price);
                var request_customer_dop_night_stay_summ      = parseFloat(request_customer_dop_night_stay_count)*parseFloat(request_customer_dop_night_stay_price);
                var request_customer_dop_mezgorod_summ       = parseFloat(request_customer_dop_mezgorod_count)*2*parseFloat(request_customer_dop_mezgorod_price);
                var request_customer_dop_rastentovka_summ    = parseFloat(request_customer_dop_rastentovka_count)*parseFloat(request_customer_dop_rastentovka_price);
                var request_customer_dop_soprov_summ         = parseFloat(request_customer_dop_soprov_count)*parseFloat(request_customer_dop_soprov_price);
                var request_customer_dop_negabarit_summ      = parseFloat(request_customer_dop_negabarit_count)/100*parseFloat(request_customer_dop_negabarit_price);
                var request_customer_dop_gruzch_summ         = parseFloat(request_customer_dop_gruzch_count)*parseFloat(request_customer_dop_gruzch_price);

                $('#request_customer_dop_prab_summ').val(request_customer_dop_prab_summ);
                $('#request_customer_dop_dop_tochka_pogr_summ').val(request_customer_dop_dop_tochka_pogr_summ);
                $('#request_customer_dop_dop_tochka_razgr_summ').val(request_customer_dop_dop_tochka_razgr_summ);
                $('#request_customer_dop_vozvr_summ').val(request_customer_dop_vozvr_summ);
                $('#request_customer_dop_pereg_summ').val(request_customer_dop_pereg_summ);
                $('#request_customer_dop_night_stay_summ').val(request_customer_dop_night_stay_summ);
                $('#request_customer_dop_mezgorod_summ').val(request_customer_dop_mezgorod_summ);
                $('#request_customer_dop_rastentovka_summ').val(request_customer_dop_rastentovka_summ);
                $('#request_customer_dop_soprov_summ').val(request_customer_dop_soprov_summ);
                $('#request_customer_dop_negabarit_summ').val(request_customer_dop_negabarit_summ);
                $('#request_customer_dop_gruzch_summ').val(request_customer_dop_gruzch_summ);

                var total = parseFloat(request_customer_dop_prab_summ)+parseFloat(request_customer_dop_dop_tochka_pogr_summ)
                    +parseFloat(request_customer_dop_dop_tochka_razgr_summ)+parseFloat(request_customer_dop_vozvr_summ)+parseFloat(request_customer_dop_pereg_summ)+parseFloat(request_customer_dop_night_stay_summ)+parseFloat(request_customer_dop_mezgorod_summ)
                    +parseFloat(request_customer_dop_rastentovka_summ)+parseFloat(request_customer_dop_soprov_summ)+parseFloat(request_customer_dop_negabarit_summ)+parseFloat(request_customer_dop_gruzch_summ)
                ;
                $('#request_customer_dop_summ').val(total);

                // Подсчёт итоговой суммы за перевозку
                var request_customer_rate_total_summ = $('#request_customer_rate_total_summ').val();
                if ( !request_customer_rate_total_summ || request_customer_rate_total_summ == 0) {
                    var request_customer_rate_total_summ = $('#request_customer_rate_total_summ').val();
                }
                var totalSumm = parseFloat(request_customer_rate_total_summ) + total;
                $('#request_customer_total_summ').val(totalSumm);

                // Сумма к оплате
                $('#request_customer_summ_to_pay').val(totalSumm);
            }
        );

    $('#request_carrier_dop_prab_count,#request_carrier_dop_prab_price,\n\
        #request_carrier_dop_dop_tochka_pogr_count,#request_carrier_dop_dop_tochka_pogr_price,#request_carrier_dop_dop_tochka_razgr_count,#request_carrier_dop_dop_tochka_razgr_price,\n\
        #request_carrier_dop_vozvr_count,#request_carrier_dop_vozvr_price,#request_carrier_dop_pereg_count,#request_carrier_dop_pereg_price,\n\
        #request_carrier_dop_night_stay_count,#request_carrier_dop_night_stay_price,#request_carrier_dop_mezgorod_count,#request_carrier_dop_mezgorod_price,\n\
        #request_carrier_dop_rastentovka_count,#request_carrier_dop_rastentovka_price,#request_carrier_dop_soprov_count,#request_carrier_dop_soprov_price,\n\
        #request_carrier_dop_negabarit_count,#request_carrier_dop_negabarit_price,#request_carrier_dop_gruzch_count,#request_carrier_dop_gruzch_price,\n\
        #carrierRateHours,#carrierRatePodachaHours,#carrierRateHourPrice,#carrierRateSumm,#carrierPrepayment,#request_carrier_rate_total_summ,#carrierRateSumm\n\
        #carrierRateSverhCount,#carrierRateSverhPrice').live('change',
            function() {
                var request_carrier_dop_prab_count           = $('#request_carrier_dop_prab_count').val();
                var request_carrier_dop_prab_price           = $('#request_carrier_dop_prab_price').val();
                var request_carrier_dop_dop_tochka_pogr_count  = $('#request_carrier_dop_dop_tochka_pogr_count').val();
                var request_carrier_dop_dop_tochka_pogr_price  = $('#request_carrier_dop_dop_tochka_pogr_price').val();
                var request_carrier_dop_dop_tochka_razgr_count = $('#request_carrier_dop_dop_tochka_razgr_count').val();
                var request_carrier_dop_dop_tochka_razgr_price = $('#request_carrier_dop_dop_tochka_razgr_price').val();
                var request_carrier_dop_vozvr_count          = $('#request_carrier_dop_vozvr_count').val();
                var request_carrier_dop_vozvr_price          = $('#request_carrier_dop_vozvr_price').val();
                var request_carrier_dop_pereg_count          = $('#request_carrier_dop_pereg_count').val();
                var request_carrier_dop_pereg_price          = $('#request_carrier_dop_pereg_price').val();
                var request_carrier_dop_night_stay_count      = $('#request_carrier_dop_night_stay_count').val();
                var request_carrier_dop_night_stay_price      = $('#request_carrier_dop_night_stay_price').val();
                var request_carrier_dop_mezgorod_count       = $('#request_carrier_dop_mezgorod_count').val();
                var request_carrier_dop_mezgorod_price       = $('#request_carrier_dop_mezgorod_price').val();
                var request_carrier_dop_rastentovka_count    = $('#request_carrier_dop_rastentovka_count').val();
                var request_carrier_dop_rastentovka_price    = $('#request_carrier_dop_rastentovka_price').val();
                var request_carrier_dop_soprov_count         = $('#request_carrier_dop_soprov_count').val();
                var request_carrier_dop_soprov_price         = $('#request_carrier_dop_soprov_price').val();
                var request_carrier_dop_negabarit_count      = $('#request_carrier_dop_negabarit_count').val();
                var request_carrier_dop_negabarit_price      = $('#request_carrier_dop_negabarit_price').val();
                var request_carrier_dop_gruzch_count         = $('#request_carrier_dop_gruzch_count').val();
                var request_carrier_dop_gruzch_price         = $('#request_carrier_dop_gruzch_price').val();

                if (!request_carrier_dop_prab_count) request_carrier_dop_prab_count=0;
                if (!request_carrier_dop_prab_price) request_carrier_dop_prab_price=0;
                if (!request_carrier_dop_dop_tochka_pogr_count) request_carrier_dop_dop_tochka_pogr_count=0;
                if (!request_carrier_dop_dop_tochka_pogr_price) request_carrier_dop_dop_tochka_pogr_price=0;
                if (!request_carrier_dop_dop_tochka_razgr_count) request_carrier_dop_dop_tochka_razgr_count=0;
                if (!request_carrier_dop_dop_tochka_razgr_price) request_carrier_dop_dop_tochka_razgr_price=0;
                if (!request_carrier_dop_vozvr_count) request_carrier_dop_vozvr_count=0;
                if (!request_carrier_dop_vozvr_price) request_carrier_dop_vozvr_price=0;
                if (!request_carrier_dop_pereg_count) request_carrier_dop_pereg_count=0;
                if (!request_carrier_dop_pereg_price) request_carrier_dop_pereg_price=0;
                if (!request_carrier_dop_night_stay_count) request_carrier_dop_night_stay_count=0;
                if (!request_carrier_dop_night_stay_price) request_carrier_dop_night_stay_price=0;
                if (!request_carrier_dop_mezgorod_count) request_carrier_dop_mezgorod_count=0;
                if (!request_carrier_dop_mezgorod_price) request_carrier_dop_mezgorod_price=0;
                if (!request_carrier_dop_rastentovka_count) request_carrier_dop_rastentovka_count=0;
                if (!request_carrier_dop_rastentovka_price) request_carrier_dop_rastentovka_price=0;
                if (!request_carrier_dop_soprov_count) request_carrier_dop_soprov_count=0;
                if (!request_carrier_dop_soprov_price) request_carrier_dop_soprov_price=0;
                if (!request_carrier_dop_negabarit_count) request_carrier_dop_negabarit_count=0;
                if (!request_carrier_dop_negabarit_price) request_carrier_dop_negabarit_price=0;
                if (!request_carrier_dop_gruzch_count) request_carrier_dop_gruzch_count=0;
                if (!request_carrier_dop_gruzch_price) request_carrier_dop_gruzch_price=0;

                var request_carrier_dop_prab_summ           = parseFloat(request_carrier_dop_prab_count)*parseFloat(request_carrier_dop_prab_price);
                var request_carrier_dop_dop_tochka_pogr_summ  = parseFloat(request_carrier_dop_dop_tochka_pogr_count)*parseFloat(request_carrier_dop_dop_tochka_pogr_price);
                var request_carrier_dop_dop_tochka_razgr_summ = parseFloat(request_carrier_dop_dop_tochka_razgr_count)*parseFloat(request_carrier_dop_dop_tochka_razgr_price);
                var request_carrier_dop_vozvr_summ          = parseFloat(request_carrier_dop_vozvr_count)/100*parseFloat(request_carrier_dop_vozvr_price);
                var request_carrier_dop_pereg_summ          = parseFloat(request_carrier_dop_pereg_count)*parseFloat(request_carrier_dop_pereg_price);
                var request_carrier_dop_night_stay_summ      = parseFloat(request_carrier_dop_night_stay_count)*parseFloat(request_carrier_dop_night_stay_price);
                var request_carrier_dop_mezgorod_summ       = parseFloat(request_carrier_dop_mezgorod_count)*2*parseFloat(request_carrier_dop_mezgorod_price);
                var request_carrier_dop_rastentovka_summ    = parseFloat(request_carrier_dop_rastentovka_count)*parseFloat(request_carrier_dop_rastentovka_price);
                var request_carrier_dop_soprov_summ         = parseFloat(request_carrier_dop_soprov_count)*parseFloat(request_carrier_dop_soprov_price);
                var request_carrier_dop_negabarit_summ      = parseFloat(request_carrier_dop_negabarit_count)/100*parseFloat(request_carrier_dop_negabarit_price);
                var request_carrier_dop_gruzch_summ         = parseFloat(request_carrier_dop_gruzch_count)*parseFloat(request_carrier_dop_gruzch_price);

                $('#request_carrier_dop_prab_summ').val(request_carrier_dop_prab_summ);
                $('#request_carrier_dop_dop_tochka_pogr_summ').val(request_carrier_dop_dop_tochka_pogr_summ);
                $('#request_carrier_dop_dop_tochka_razgr_summ').val(request_carrier_dop_dop_tochka_razgr_summ);
                $('#request_carrier_dop_vozvr_summ').val(request_carrier_dop_vozvr_summ);
                $('#request_carrier_dop_pereg_summ').val(request_carrier_dop_pereg_summ);
                $('#request_carrier_dop_night_stay_summ').val(request_carrier_dop_night_stay_summ);
                $('#request_carrier_dop_mezgorod_summ').val(request_carrier_dop_mezgorod_summ);
                $('#request_carrier_dop_rastentovka_summ').val(request_carrier_dop_rastentovka_summ);
                $('#request_carrier_dop_soprov_summ').val(request_carrier_dop_soprov_summ);
                $('#request_carrier_dop_negabarit_summ').val(request_carrier_dop_negabarit_summ);
                $('#request_carrier_dop_gruzch_summ').val(request_carrier_dop_gruzch_summ);

                var total = parseFloat(request_carrier_dop_prab_summ)+parseFloat(request_carrier_dop_dop_tochka_pogr_summ)
                    +parseFloat(request_carrier_dop_dop_tochka_razgr_summ)+parseFloat(request_carrier_dop_vozvr_summ)+parseFloat(request_carrier_dop_pereg_summ)+parseFloat(request_carrier_dop_night_stay_summ)+parseFloat(request_carrier_dop_mezgorod_summ)
                    +parseFloat(request_carrier_dop_rastentovka_summ)+parseFloat(request_carrier_dop_soprov_summ)+parseFloat(request_carrier_dop_negabarit_summ)+parseFloat(request_carrier_dop_gruzch_summ)
                ;
                $('#request_carrier_dop_summ').val(total);

                // Подсчёт итоговой суммы за перевозку
                var request_carrier_rate_total_summ = $('#request_carrier_rate_total_summ').val();
                if ( !request_carrier_rate_total_summ || request_carrier_rate_total_summ == 0 ) {
                    var request_carrier_rate_total_summ = $('#request_carrier_rate_total_summ').val();
                }

                var totalSumm = parseFloat(request_carrier_rate_total_summ) + total;
                $('#request_carrier_total_summ').val(totalSumm);

                // Сумма к оплате
                $('#request_carrier_summ_to_pay').val(totalSumm);
            }
    );



    // Смена методов оплаты
    rateFields()
    $('.customerPayMethodButton').live('click',
        function () {
            var dogTarif   = $('#carrierRateSumm').attr('value')
            var minVremRab = $('#carrierRateHours').attr('value')
            var vremPodach = $('#carrierRatePodachaHours').attr('value')
            var hourPrice  = $('#carrierRateHourPrice').attr('value')
            var daleeHours = $('#carrierRateSverhCount').attr('value')
            var daleePrice = $('#carrierRateSverhPrice').attr('value')
            var daleeSumm  = $('#carrierRateSverhSumm').attr('value')
            var totalSumm  = $('#request_carrier_rate_total_summ').attr('value')
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
            var totalSumm  = $('#request_customer_rate_total_summ').attr('value')
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

    // Функция смены полей, заполняет поля значениями, определяет одно из 4 состояний и делает
    // соотв. отрисовку
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
            html +=	"\t\t<input type='text' name='customerRateSumm' id='customerRateSumm' value='"+cusDogTarif+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerTopLeft'>По договорному тарифу:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier dog fieldInnerTopRight'>\n"
            html +=	"\t\t<input type='text' name='carrierRateSumm' id='carrierRateSumm' value='"+carDogTarif+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerBottomLeft customerNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight customerNext'>\n"
            html +=	"\t\t<input type='text' name='customerRateSverhPrice' id='customerRateSverhPrice' value='"+cusDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerBottomLeft carrierNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight'>\n"
            html +=	"\t\t<input type='text' name='carrierRateSverhPrice' id='carrierRateSverhPrice' value='"+carDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td class='borNone customerTotal' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='customer fieldName fieldInnerBottomLeft customerTotal' style='border-top: 1px solid black;' >\n"
            html +=	"\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='customer sdel fieldInnerBottomRight customerTotal' style='border-top: 1px solid black;'>\n"
            html +=	"\t\t<input type='text' name='request_customer_rate_total_summ' id='request_customer_rate_total_summ' value='"+cusTotalSumm+"' class='inp' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='borNone' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='carrier fieldName fieldInnerBottomLeft carrierTotal' style='border-top: 1px solid black;'>\n"
            html +=	"\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='carrier sdel fieldInnerBottomRight' style='border-top: 1px solid black;'>\n"
            html +=	"\t\t<input type='text' name='request_carrier_rate_total_summ' id='request_carrier_rate_total_summ' value='"+carTotalSumm+"' class='inp' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr></tbody>\n"
            $('#rateVariants').replaceWith(html)
        }
        if ($('.customerPayMethodButton').attr('state') == 'povr' && $('.carrierPayMethodButton').attr('state') == 'povr') {
            html = "\t<tbody id='rateVariants'><tr>\n"
            html +=     "\t\t<td class='customer fieldName fieldInnerTopLeft customerPaymentPovrem1'>Мин.вр. работы:</td>\n"
            html +=    "\t\t<td class='customer fieldInnerMediumTop'>\n"
            html +=        "\t\t<input type='text' name='customerRateHours' id='customerRateHours' value='"+cusMinVremRab+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.</td>\n"
            html +=    "\t\t<td class='customer fieldName fieldInnerMediumTop'  >Время подачи:</td>\n"
            html +=    "\t\t<td class='customer fieldInnerTopRight'>\n"
            html +=       "\t\t <input type='text' name='customerRatePodachaHours' id='customerRatePodachaHours' value='"+cusVremPodach+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='carrier fieldName fieldInnerTopLeft carrierPaymentPovrem1'>Мин.вр. работы:</td>\n"
            html +=    "\t\t<td class='carrier fieldInnerMediumTop'>\n"
            html +=        "\t\t<input type='text' name='carrierRateHours' id='carrierRateHours' value='"+carMinVremRab+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='carrier fieldName fieldInnerMediumTop'>Время подачи:</td>\n"
            html +=    "\t\t<td class='carrier fieldInnerTopRight'>\n"
            html +=        "\t\t<input type='text' name='carrierRatePodachaHours' id='carrierRatePodachaHours' value='"+carVremPodach+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerMiddleLeft customerPaymentPovrem2'>Цена за час:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight'>\n"
            html +=    "\t\t<input type='text' name='customerRateHourPrice' id='customerRateHourPrice' value='"+cusHourPrice+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerMiddleLeft carrierPaymentPovrem2'  >Цена за час:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight'>\n"
            html +=         "\t\t<input type='text' name='carrierRateHourPrice' id='carrierRateHourPrice' value='"+carHourPrice+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerBottomLeft customerNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight customerNext'>\n"
            html +=	"\t\t<input type='text' name='customerRateSverhPrice' id='customerRateSverhPrice' value='"+cusDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerBottomLeft carrierNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight'>\n"
            html +=	"\t\t<input type='text' name='carrierRateSverhPrice' id='carrierRateSverhPrice' value='"+carDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td class='borNone customerTotal' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='customer fieldName fieldInnerBottomLeft customerTotal' style='border-top: 1px solid black;' >\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span></td>\n"
            html +=    "\t\t<td colspan='1' class='customer sdel fieldInnerBottomRight customerTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request_customer_rate_total_summ' id='request_customer_rate_total_summ' value='"+cusTotalSumm+"' class='inp' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='borNone' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='carrier fieldName fieldInnerBottomLeft carrierTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='carrier sdel fieldInnerBottomRight' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request_carrier_rate_total_summ' id='request_carrier_rate_total_summ' value='"+carTotalSumm+"' class='inp' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr></tbody>\n"
            $('#rateVariants').replaceWith(html)
        }
        if ($('.customerPayMethodButton').attr('state') == 'dog' && $('.carrierPayMethodButton').attr('state') == 'povr') {
            html =  "\t<tbody id='rateVariants'><tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerTopLeft customerPaymentSdeln'>По договорному тарифу:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer dog fieldInnerTopRight'>\n"
            html +=        "\t\t<input type='text' name='customerRateSumm' id='customerRateSumm' value='"+cusDogTarif+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='carrier fieldName fieldInnerTopLeft carrierPaymentPovrem1'  >Мин.вр. работы:</td>\n"
            html +=    "\t\t<td class='carrier fieldInnerMediumTop'>\n"
            html +=        "\t\t<input type='text' name='carrierRateHours' id='carrierRateHours' value='"+carMinVremRab+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='carrier fieldName fieldInnerMediumTop'  >Время подачи:</td>\n"
            html +=    "\t\t<td class='carrier fieldInnerTopRight'>\n"
            html +=         "\t\t<input type='text' name='carrierRatePodachaHours' id='carrierRatePodachaHours' value='"+carVremPodach+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerBottomLeft customerNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight customerNext'>\n"
            html +=        "\t\t<input type='text' name='customerRateSverhPrice' id='customerRateSverhPrice' value='"+cusDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerMiddleLeft carrierPaymentPovrem2'>Цена за час:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight'>\n"
            html +=        "\t\t<input type='text' name='carrierRateHourPrice' id='carrierRateHourPrice' value='"+carHourPrice+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td class='borNone customerTotal' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='customer fieldName fieldInnerBottomLeft customerTotal' style='border-top: 1px solid black;' >\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=     "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='customer sdel fieldInnerBottomRight customerTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request_customer_rate_total_summ' id='request_customer_rate_total_summ' value='"+cusTotalSumm+"' class='inp' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerBottomLeft carrierNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight carrierNext'>\n"
            html +=        "\t\t<input type='text' name='carrierRateSverhPrice' id='carrierRateSverhPrice' value='"+carDaleePrice+"' class='inp' size='8'>руб./час\n"
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
            html +=        "\t\t<input type='text' name='request_carrier_rate_total_summ' id='request_carrier_rate_total_summ' value='"+carTotalSumm+"' class='inp' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr></tbody>\n"
            $('#rateVariants').replaceWith(html)
        }
        if ($('.customerPayMethodButton').attr('state') == 'povr' && $('.carrierPayMethodButton').attr('state') == 'dog') {
            html = "\t<tbody id='rateVariants'><tr>\n"
            html +=    "\t\t<td class='customer fieldName fieldInnerTopLeft customerPaymentPovrem1'  >Мин.вр. работы:</td>\n"
            html +=    "\t\t<td class='customer fieldInnerMediumTop'>\n"
            html +=        "\t\t<input type='text' name='customerRateHours' id='customerRateHours' value='"+cusMinVremRab+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='customer fieldName fieldInnerMediumTop'  >Время подачи:</td>\n"
            html +=    "\t\t<td class='customer fieldInnerTopRight'>\n"
            html +=        "\t\t<input type='text' name='customerRatePodachaHours' id='customerRatePodachaHours' value='"+cusVremPodach+"' class='inp required' size='3'><span style='color: red; font-size: 16px;'>*</span> ч.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerTopLeft carrierPaymentSdeln'>По договорному тарифу:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier dog fieldInnerTopRight carrierPaymentSdeln'>\n"
            html +=        "\t\t<input type='text' name='carrierRateSumm' id='carrierRateSumm' value='"+carDogTarif+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerMiddleLeft customerPaymentPovrem2'  >Цена за час:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight'>\n"
            html +=        "\t\t<input type='text' name='customerRateHourPrice' id='customerRateHourPrice' value='"+cusHourPrice+"' class='inp required' size='8'><span style='color: red; font-size: 16px;'>*</span> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldName fieldInnerBottomLeft customerNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='customer fieldInnerMiddleRight customerNext'>\n"
            html +=        "\t\t<input type='text' name='customerRateSverhPrice' id='customerRateSverhPrice' value='"+cusDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldName fieldInnerBottomLeft carrierNext'>Далее:</td>\n"
            html +=    "\t\t<td colspan='2' class='carrier fieldInnerMiddleRight carrierNext'>\n"
            html +=        "\t\t<input type='text' name='carrierRateSverhPrice' id='carrierRateSverhPrice' value='"+carDaleePrice+"' class='inp' size='8'>руб./час\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td class='borNone' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='carrier fieldName fieldInnerBottomLeft carrierTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='carrier sdel fieldInnerBottomRight' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request_carrier_rate_total_summ' id='request_carrier_rate_total_summ' value='"+carTotalSumm+"' class='inp' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html += "\t</tr>\n"
            html += "\t<tr>\n"
            html +=    "\t\t<td class='borNone customerTotal' colspan='2'></td>\n"
            html +=    "\t\t<td colspan='1' align='right' class='customer fieldName fieldInnerBottomLeft customerTotal' style='border-top: 1px solid black;' >\n"
            html +=        "\t\t<span style='font-style: italic; font-size:14px; text-decoration: underline;'>Итого:</span>\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td colspan='1' class='customer sdel fieldInnerBottomRight customerTotal' style='border-top: 1px solid black;'>\n"
            html +=        "\t\t<input type='text' name='request_customer_rate_total_summ' id='request_customer_rate_total_summ' value='"+cusTotalSumm+"' class='inp' size='8'> руб.\n"
            html +=    "\t\t</td>\n"
            html +=    "\t\t<td  class='fieldBetween'></td>\n"
            html +=    "\t\t<td colspan='4' class='borNone'></td>\n"
            html += "\t</tr></tbody>\n"
            $('#rateVariants').replaceWith(html)
        }
    }

    blockFields()

    function blockFields() {
        $('#request_customer_dop_prab_count').attr('readonly','readonly')
        $('#request_customer_dop_dop_tochka_pogr_count').attr('readonly','readonly')
        $('#request_customer_dop_dop_tochka_razgr_count').attr('readonly','readonly')
        $('#request_customer_dop_rastentovka_count').attr('readonly','readonly')
        $('#request_customer_dop_pereg_count').attr('readonly','readonly')
        $('#request_customer_dop_night_stay_count').attr('readonly','readonly')
        $('#request_customer_dop_mezgorod_count').attr('readonly','readonly')
        $('#request_customer_dop_soprov_count').attr('readonly','readonly')
        $('#request_customer_dop_vozvr_count').attr('readonly','readonly')
        $('#request_customer_dop_negabarit_count').attr('readonly','readonly')
        $('#request_customer_dop_gruzch_count').attr('readonly','readonly')

        $('#request_carrier_dop_prab_count').attr('readonly','readonly')
        $('#request_carrier_dop_dop_tochka_pogr_count').attr('readonly','readonly')
        $('#request_carrier_dop_dop_tochka_razgr_count').attr('readonly','readonly')
        $('#request_carrier_dop_rastentovka_count').attr('readonly','readonly')
        $('#request_carrier_dop_pereg_count').attr('readonly','readonly')
        $('#request_carrier_dop_night_stay_count').attr('readonly','readonly')
        $('#request_carrier_dop_mezgorod_count').attr('readonly','readonly')
        $('#request_carrier_dop_soprov_count').attr('readonly','readonly')
        $('#request_carrier_dop_vozvr_count').attr('readonly','readonly')
        $('#request_carrier_dop_negabarit_count').attr('readonly','readonly')
        $('#request_carrier_dop_gruzch_count').attr('readonly','readonly')

    }

});
