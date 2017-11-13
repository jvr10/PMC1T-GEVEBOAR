<%@ Page Title="GEVEBOAR|Buscar vuelos" Language="C#" MasterPageFile="~/Skull.Master" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="sssaas.Busqueda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container searchCriteriaWrapper"><img class="supersized-titleimage hidden-xs hidden-sm" id="titleimage-1" src="https://content.vivaair.com/Upload-FC/pe/background/home/transparent.png" alt="" title="" style="opacity: 1; display: inline;">

<div class="user-details-wrapper">



</div>

        <a id="main-content" href="javascript:;" class="screenreader" title="Compra tus pasajes">Compra tus pasajes</a>
    <div id="flightcriteria-container-span" style="visibility: visible; display: block;">
        <div id="tabs-container" class="criteriaHeader">
            <ul>
                <li aria-controls="box-flight">
                    <a title="Seleccione la casilla vuelo" id="tab-flight" href="" data-bind="css: { 'current': currentTab() == 'Flight' }, click: setTab" data-tab="Flight" class="tab first-tab col-xs-4 col-sm-4 col-md-2 current">
                        <div class="icon-and-name">Compra tus pasajes</div>
                    </a>
                </li>

                    <li aria-controls="box-checkin">
                        <a title="Seleccione la casilla Web Check-in" id="tab-checkin" href="" class="tab col-xs-4 col-sm-4 col-md-2" data-bind="css: { 'current': currentTab() == 'WebCheckIn' }, click: setTab" data-tab="WebCheckIn">
                            <div class="icon-and-name">Web check-in</div>
                        </a>
                    </li>

                    <li aria-controls="box-booking">
                        <a title="Seleccione la casilla mi reserva" id="tab-booking" href="" class="tab col-xs-4 col-sm-4 col-md-2" data-bind="css: { 'current': currentTab() == 'MyBooking' }, click: setTab" data-tab="MyBooking">
                            <div class="icon-and-name">Mi Reserva</div>
                        </a>
                    </li>



                
                    <li aria-controls="box-rentalcars">
                        <a title="https://www.rentalcars.com/?affiliateCode=vivaair&amp;preflang=es&amp;adplat=homepage" target="_blank" id="tab-rentalcars" href="" class="tab hidden-xs hidden-sm col-md-2">
                            <div class="icon-and-name">Auto</div>
                        </a>
                    </li>
            </ul>

            <div class="clear"></div>
        </div>

        <div id="box-booking" class="box criteriaTab criteriaLoginContainer" data-bind="visible: currentTab() == 'MyBooking'" style="display: none;">
<div class="login-box">
    <div class="col-xs-12">
            <div class="validation-container error" id="booking-login-validation-6588" style="display: none;">
    </div>

    </div>


    <form id="booking-login-form-6588" action="/MyBooking/SignIn?fromUrl=%2Fpe%2Ftu-reserva%2Fmi-reserva%2Fdetalles&amp;itemId=6588" method="POST" autocomplete="on" novalidate="novalidate">
        <div class="col-xs-12">
            <p>Paso 1: Ingresa el código de tu reserva (6 caracteres) y el nombre del pasajero como aparece en la reserva. </p>
            <p>Paso 2: Haz clic en continuar</p>
        </div>
        <div class="login-credentials-wrapper">
            <div class="login-credentials col-xs-12 col-md-3">
                <label for="bookingNumber6588">Código de reserva</label>
                <input type="text" id="bookingNumber6588" name="bookingNumber" maxlength="6" style="text-transform: uppercase" placeholder="Código de reserva">
            </div>
            <div class="login-credentials col-xs-12 col-md-3">
                <div class="name">
                    <label for="lastName6588">Apellido(s)</label>
                    <input type="text" id="lastName6588" name="lastName" maxlength="32" placeholder="Apellido(s)" value="">
                </div>
            </div>
            <div class="col-xs-12 col-md-3 login-button-wrapper">
                <a class="redlink" title="Ingresar" id="booking-login-link-6588" href="#"><span>Ingresar<i></i></span></a>
                <input type="submit" id="booking-login-button-6588" value="Ingresar">
            </div>
        </div>
    </form>

    <div class="clear"></div>
</div>

<script type="text/javascript">
    $(function () {
        var changeBookingLogin = ezy.views.changebooking.login(
            {
                translations: {
                    locatorRequired: 'C&#243;digo de reserva requerido (6 caracteres)',
                    firstNameRequired: 'Por favor ingresa el nombre',
                    lastNameRequired: 'Por favor ingresa el apellido',
                    btnPleaseWait: 'Cargando',
                    btnLoginText: 'Ingresar',
                    disallowedCharacters: 'Disallowed Characters',
                },
                controls: {
                    loginLink: $('#booking-login-link-6588'),
                    loginBtn: $('#booking-login-button-6588'),
                    loginValidationContainer: '#booking-login-validation-6588',
                    year: $('.year'),
                    month: $('.month'),
                    day: $('.day')
                },
                form: $('#booking-login-form-6588')
            });

        changeBookingLogin.init();

    });
</script>


        </div>

        <div id="box-checkin" class="box criteriaTab criteriaLoginContainer" data-bind="visible: currentTab() == 'WebCheckIn'" style="display: none;">
<div class="login-box">
    <div class="col-xs-12">
            <div class="validation-container error" id="booking-login-validation-6589" style="display: none;">
    </div>

    </div>


    <form id="booking-login-form-6589" action="/MyBooking/SignIn?fromUrl=%2Fpe%2Ftu-reserva%2Fimprimir-check-in%2Fimprime-tu-pase-de-abordar&amp;itemId=6589" method="POST" autocomplete="on" novalidate="novalidate">
        <div class="col-xs-12">
            <p>Paso 1: Ingresa el código de tu reserva (6 caracteres) y el nombre del pasajero como aparece en la reserva.</p>
            <p>Paso 2: Haz clic en continuar</p>
        </div>
        <div class="login-credentials-wrapper">
            <div class="login-credentials col-xs-12 col-md-3">
                <label for="bookingNumber6589">Código de reserva</label>
                <input type="text" id="bookingNumber6589" name="bookingNumber" maxlength="6" style="text-transform: uppercase" placeholder="Código de reserva">
            </div>
            <div class="login-credentials col-xs-12 col-md-3">
                <div class="name">
                    <label for="lastName6589">Apellido(s)</label>
                    <input type="text" id="lastName6589" name="lastName" maxlength="32" placeholder="Apellido(s)" value="">
                </div>
            </div>
            <div class="col-xs-12 col-md-3 login-button-wrapper">
                <a class="redlink" title="Ingresar" id="booking-login-link-6589" href="#"><span>Ingresar<i></i></span></a>
                <input type="submit" id="booking-login-button-6589" value="Ingresar">
            </div>
        </div>
    </form>

    <div class="clear"></div>
</div>

<script type="text/javascript">
    $(function () {
        var changeBookingLogin = ezy.views.changebooking.login(
            {
                translations: {
                    locatorRequired: 'C&#243;digo de reserva requerido (6 caracteres)',
                    firstNameRequired: 'Por favor ingresa el nombre',
                    lastNameRequired: 'Por favor ingresa el apellido',
                    btnPleaseWait: 'Cargando',
                    btnLoginText: 'Ingresar',
                    disallowedCharacters: 'Disallowed Characters',
                },
                controls: {
                    loginLink: $('#booking-login-link-6589'),
                    loginBtn: $('#booking-login-button-6589'),
                    loginValidationContainer: '#booking-login-validation-6589',
                    year: $('.year'),
                    month: $('.month'),
                    day: $('.day')
                },
                form: $('#booking-login-form-6589')
            });

        changeBookingLogin.init();

    });
</script>


        </div>

        <div id="box-hotel" class="box criteriaTab" data-bind="visible: currentTab() == 'Hotel'" style="display: none;">
        </div>

        <div id="box-parking" class="box criteriaTab" data-bind="visible: currentTab() == 'Parking'" style="display: none;">
        </div>

        <div id="box-flight" class="box criteriaTab smallColumnPadding" data-bind="visible: currentTab() == 'Flight'" style="position: relative;">
            
            <div class="searchButtonWrapper">
                <a class="redlink" id="continueLink" title="Encuentra tu vuelo" href="javascript:;">
                    Encuentra tu vuelo
                    <i></i>
                </a>
            </div>

            <form id="box-flight-form" action="/Booking/PostCriteria" method="POST" novalidate="novalidate">
                <div id="validationErrors" class="hidden"></div>


                <input type="submit" class="hidden" id="btnContinue" value="Encuentra tu vuelo">
                <div class="col-xs-12 col-sm-12 col-md-2">
                    <div class="travel-mode-wrapper">
                        <fieldset class="styled radiogroup">
                            <legend aria-hidden="true">Solo ida</legend>
                            <div class="criteria-side-by-side-xs-sm">
                                <label id="rbOneWayWrapper" class="radioWrapper" for="rbOneWay">
                                        <input type="radio" value="OneWay" id="rbOneWay" name="TravelMode" data-bind="checked: travelMode">
                                        <span>Ida</span>
                                </label>
                                <div class="clear"></div>
                            </div>
                            <div class="criteria-side-by-side-xs-sm criteria-margin-left-xs-sm">
                                <label for="rbRoundtrip" id="rbRoundtripWrapper" class="radioWrapper">
                                        <input type="radio" value="RoundTrip" id="rbRoundtrip" name="TravelMode" data-bind="checked: travelMode">
                                        <span>Ida y vuelta</span>
                                </label>
                                <div class="clear"></div>
                            </div>
                            
                        </fieldset>
                    </div>
                </div>
                
                
                <div class="col-xs-12 col-sm-12 col-md-7" data-bind="visible: travelMode() === 'MultiCity'" style="display: none;">
                    <div style="margin-top: 10px;">
                        <!-- ko foreach: MultiCityFlights -->
                        
                        <div style="background: #c6c6c6; border-radius: 23px; padding: 5px; margin-bottom: 10px;">
                            <div style="float: left; width: 32%; margin-right: 2%;">
                                <label data-bind="labelFor: 'Flights[' + Number + '].DepartureAirport'" class="screenreader" for="Flights_0__DepartureAirport">Origen</label>
                                <div class="select2-container criteriaSelect selectDestination" id="s2id_autogen1"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-2">From (flight 0)</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen2" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-2" id="s2id_autogen2"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen2_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-2" id="s2id_autogen2_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-2">   </ul></div></div><select class="criteriaSelect selectDestination" data-bind="select2: true, id: 'Flights[' + Number + '].DepartureAirport',
    options: $parent.fromAirports,
    optionsText: 'name',
    optionsValue: 'code',
    optionsCaption: 'From (flight ' + Number + ')'" tabindex="-1" title="" id="Flights_0__DepartureAirport" name="Flights[0].DepartureAirport" style="display: none;"><option value="">From (flight 0)</option><option value="AQP">Arequipa (AQP)</option><option value="CIX">Chiclayo (CIX)</option><option value="CUZ">Cusco  (CUZ)</option><option value="IQT">Iquitos (IQT)</option><option value="LIM">Lima - Jorge Chavez (LIM)</option><option value="PIU">Piura (PIU)</option><option value="TPP">Tarapoto (TPP)</option></select>
                            </div>
                            <div style="float: left; width: 32%; margin-right: 2%;">
                                <label data-bind="labelFor: 'Flights[' + Number + '].ArrivalAirport'" class="screenreader" for="Flights_0__ArrivalAirport">Destino</label>
                                <div class="select2-container criteriaSelect selectDestination" id="s2id_autogen3"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-4">To (flight 0)</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen4" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-4" id="s2id_autogen4"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen4_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-4" id="s2id_autogen4_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-4">   </ul></div></div><select class="criteriaSelect selectDestination" data-bind="select2: true, id: 'Flights[' + Number + '].ArrivalAirport',
    options: $parent.fromAirports,
    optionsText: 'name',
    optionsValue: 'code',
    optionsCaption: 'To (flight ' + Number + ')'" tabindex="-1" title="" id="Flights_0__ArrivalAirport" name="Flights[0].ArrivalAirport" style="display: none;"><option value="">To (flight 0)</option><option value="AQP">Arequipa (AQP)</option><option value="CIX">Chiclayo (CIX)</option><option value="CUZ">Cusco  (CUZ)</option><option value="IQT">Iquitos (IQT)</option><option value="LIM">Lima - Jorge Chavez (LIM)</option><option value="PIU">Piura (PIU)</option><option value="TPP">Tarapoto (TPP)</option></select>
                            </div>
                            <div class="dateWrapper" style="float: left; width: 32%;">
                                <div class="label"><span></span></div>
                                <label data-bind="labelFor: 'Flights[' + Number + '].DepartureDate'" class="screenreader" for="Flights_0__DepartureDate">Fecha de ida</label>
                                <input class="criteriaText big hasDatepicker" data-bind="id: 'Flights[' + Number + '].DepartureDate', datepicker: SelectedDepartureDate" type="text" value="" id="Flights_0__DepartureDate" name="Flights[0].DepartureDate">
                            </div>
                            <div class="clear"></div>
                        </div>
                        
                        
                        
                        <div style="background: #c6c6c6; border-radius: 23px; padding: 5px; margin-bottom: 10px;">
                            <div style="float: left; width: 32%; margin-right: 2%;">
                                <label data-bind="labelFor: 'Flights[' + Number + '].DepartureAirport'" class="screenreader" for="Flights_1__DepartureAirport">Origen</label>
                                <div class="select2-container criteriaSelect selectDestination" id="s2id_autogen5"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-6">From (flight 1)</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen6" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-6" id="s2id_autogen6"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen6_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-6" id="s2id_autogen6_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-6">   </ul></div></div><select class="criteriaSelect selectDestination" data-bind="select2: true, id: 'Flights[' + Number + '].DepartureAirport',
    options: $parent.fromAirports,
    optionsText: 'name',
    optionsValue: 'code',
    optionsCaption: 'From (flight ' + Number + ')'" tabindex="-1" title="" id="Flights_1__DepartureAirport" name="Flights[1].DepartureAirport" style="display: none;"><option value="">From (flight 1)</option><option value="AQP">Arequipa (AQP)</option><option value="CIX">Chiclayo (CIX)</option><option value="CUZ">Cusco  (CUZ)</option><option value="IQT">Iquitos (IQT)</option><option value="LIM">Lima - Jorge Chavez (LIM)</option><option value="PIU">Piura (PIU)</option><option value="TPP">Tarapoto (TPP)</option></select>
                            </div>
                            <div style="float: left; width: 32%; margin-right: 2%;">
                                <label data-bind="labelFor: 'Flights[' + Number + '].ArrivalAirport'" class="screenreader" for="Flights_1__ArrivalAirport">Destino</label>
                                <div class="select2-container criteriaSelect selectDestination" id="s2id_autogen7"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-8">To (flight 1)</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen8" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-8" id="s2id_autogen8"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen8_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-8" id="s2id_autogen8_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-8">   </ul></div></div><select class="criteriaSelect selectDestination" data-bind="select2: true, id: 'Flights[' + Number + '].ArrivalAirport',
    options: $parent.fromAirports,
    optionsText: 'name',
    optionsValue: 'code',
    optionsCaption: 'To (flight ' + Number + ')'" tabindex="-1" title="" id="Flights_1__ArrivalAirport" name="Flights[1].ArrivalAirport" style="display: none;"><option value="">To (flight 1)</option><option value="AQP">Arequipa (AQP)</option><option value="CIX">Chiclayo (CIX)</option><option value="CUZ">Cusco  (CUZ)</option><option value="IQT">Iquitos (IQT)</option><option value="LIM">Lima - Jorge Chavez (LIM)</option><option value="PIU">Piura (PIU)</option><option value="TPP">Tarapoto (TPP)</option></select>
                            </div>
                            <div class="dateWrapper" style="float: left; width: 32%;">
                                <div class="label"><span></span></div>
                                <label data-bind="labelFor: 'Flights[' + Number + '].DepartureDate'" class="screenreader" for="Flights_1__DepartureDate">Fecha de ida</label>
                                <input class="criteriaText big hasDatepicker" data-bind="id: 'Flights[' + Number + '].DepartureDate', datepicker: SelectedDepartureDate" type="text" value="" id="Flights_1__DepartureDate" name="Flights[1].DepartureDate">
                            </div>
                            <div class="clear"></div>
                        </div>
                        
                        <!-- /ko -->
                    </div>
                    <div style="margin: 10px 0px;">
                        <a style="float: right;    margin-right: 20px;" href="#" data-bind="click: AddFlight">Add Flight +</a>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                    <div style="padding-bottom: 10px; background: #c6c6c6; border-radius: 23px; padding: 5px;">
                        <label for="Adults2" class="screenreader">Seleccione el número de adultos</label>
                        <div class="select2-container" id="s2id_Adults2" style="float: left; width: 32%; margin-right: 2%;"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-9">1 adult</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen9" class="select2-offscreen">Seleccione el número de adultos</label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-9" id="s2id_autogen9"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen9_search" class="select2-offscreen">Seleccione el número de adultos</label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-9" id="s2id_autogen9_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-9">   </ul></div></div><select id="Adults2" style="float: left; width: 32%; margin-right: 2%; display: none;" name="Adults2" data-bind="select2: true, options: adults, optionsCaption: '1 adult' " tabindex="-1" title="Seleccione el número de adultos"><option value="">1 adult</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option></select>
                        <label for="Children2" class="screenreader">Seleccione el número de niños entre dos y catorce años</label>
                        <div class="select2-container" id="s2id_Children2" style="float: left; width: 32%; margin-right: 2%;"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-10">0 children</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen10" class="select2-offscreen">Seleccione el número de niños entre dos y catorce años</label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-10" id="s2id_autogen10"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen10_search" class="select2-offscreen">Seleccione el número de niños entre dos y catorce años</label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-10" id="s2id_autogen10_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-10">   </ul></div></div><select id="Children2" style="float: left; width: 32%; margin-right: 2%; display: none;" name="Children2" data-bind="select2: true, options: children, optionsCaption: '0 children' " tabindex="-1" title="Seleccione el número de niños entre dos y catorce años"><option value="">0 children</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option></select>
                        <label for="Infants2" class="screenreader">Seleccione el número de infantes menores de dos años</label>
                        <div class="select2-container" id="s2id_Infants2" style="float: left; width: 32%;"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-11">0 infants</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen11" class="select2-offscreen">Seleccione el número de infantes menores de dos añosSeleccione el número de infantes menores de dos años</label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-11" id="s2id_autogen11"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen11_search" class="select2-offscreen">Seleccione el número de infantes menores de dos añosSeleccione el número de infantes menores de dos años</label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-11" id="s2id_autogen11_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-11">   </ul></div></div><select id="Infants2" style="float: left; width: 32%; display: none;" name="Infants2" data-bind="select2: true, options: infants, optionsCaption: '0 infants' " tabindex="-1" title="Seleccione el número de infantes menores de dos añosSeleccione el número de infantes menores de dos años"><option value="">0 infants</option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option></select>
                        <div class="clear"></div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-3" data-bind="visible: travelMode() !== 'MultiCity'">
                    <div id="fromAirportWrapper" class="selectDestinationWrapper">
                        <label for="departureCityDrop" class="small">Origen</label>
                        <div class="select2-container criteriaSelect selectDestination" id="s2id_departureCityDrop"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-19">Arequipa (AQP)</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen19" class="select2-offscreen">Origen</label><input class="select2-focusser select2-offscreen ignore skipped" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-19" id="s2id_autogen19"></div><select id="departureCityDrop" name="DepartureCity" class="criteriaSelect selectDestination" data-bind="options: fromAirports, optionsText: 'name', optionsValue: 'code', value: selectedFromAirport, optionsCaption: 'Selecciona'" tabindex="-1" title="Origen" style="display: none;"><option value="">Selecciona</option><option value="AQP">Arequipa (AQP)</option><option value="CIX">Chiclayo (CIX)</option><option value="CUZ">Cusco  (CUZ)</option><option value="IQT">Iquitos (IQT)</option><option value="LIM">Lima - Jorge Chavez (LIM)</option><option value="PIU">Piura (PIU)</option><option value="TPP">Tarapoto (TPP)</option></select>
                    </div>
                    <div id="toAirportWrapper" class="selectDestinationWrapper">
                        <label for="arrivalCityDrop" class="small">Destino</label>
                        <div class="select2-container criteriaSelect selectDestination" id="s2id_arrivalCityDrop"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-20">Selecciona</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen20" class="select2-offscreen">Destino</label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-20" id="s2id_autogen20"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen20_search" class="select2-offscreen">Destino</label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-20" id="s2id_autogen20_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-20">   </ul></div></div><select id="arrivalCityDrop" name="ArrivalCity" class="criteriaSelect selectDestination" data-bind="options: toAirports, optionsText: 'Name', optionsValue: 'Code', value: selectedToAirport, optionsCaption: 'Selecciona'" tabindex="-1" title="Destino" style="display: none;"><option value="">Selecciona</option><option value="CIX">Chiclayo (CIX)</option><option value="CUZ">Cusco  (CUZ)</option><option value="IQT">Iquitos (IQT)</option><option value="LIM">Lima - Jorge Chavez (LIM)</option><option value="PIU">Piura (PIU)</option><option value="TPP">Tarapoto (TPP)</option></select>
                    </div>
                    <div id="adultsChildrenWrapper" class="selectDestinationWrapper">
                        <label for="Adults" class="small">Número de pasajeros</label>
                        <div class="select2-container criteriaSelect selectAdults" id="s2id_Adults"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-21">2 Adultos</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen21" class="select2-offscreen">Número de pasajeros</label><input class="select2-focusser select2-offscreen ignore skipped" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-21" id="s2id_autogen21"></div><select id="Adults" name="Adults" class="criteriaSelect selectAdults" data-bind="options: adults, value: selectedAdults, optionsCaption: '' " tabindex="-1" title="Número de pasajeros" style="display: none;"><option value=""></option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option></select>
                        <label for="Children" class="screenreader">Seleccione el número de niños entre dos y catorce años</label>
                        <div class="select2-container criteriaSelect selectChildren" id="s2id_Children" title="Seleccione el número de niños entre dos y catorce años" style="display: block;"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-22">0 Niños <span class="passengerDescription">(Menor de 14)</span></span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen22" class="select2-offscreen">Seleccione el número de niños entre dos y catorce años</label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-22" id="s2id_autogen22"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen22_search" class="select2-offscreen">Seleccione el número de niños entre dos y catorce años</label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-22" id="s2id_autogen22_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-22">   </ul></div></div><select id="Children" name="Children" class="criteriaSelect selectChildren" data-bind="select2: true, options: children, value: selectedChildren, optionsCaption: '' " title="Seleccione el número de niños entre dos y catorce años" style="display: none;" tabindex="-1"><option value=""></option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option></select>
                        <div class="clear"></div>
                    </div>

                    <div class="infantsWrapper selectDestinationWrapper hidden-sm hidden-md hidden-lg">
                        <label for="Infants" class="screenreader">Seleccione el número de infantes menores de dos años</label>
                        <div class="select2-container criteriaSelect selectInfants" id="s2id_Infants" title="Seleccione el número de infantes menores de dos años" style="display: inline-block;"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-23">0 Infantes <span class="passengerDescription">(Menor de 2)</span></span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen23" class="select2-offscreen">Seleccione el número de infantes menores de dos años</label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-23" id="s2id_autogen23"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen23_search" class="select2-offscreen">Seleccione el número de infantes menores de dos años</label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-23" id="s2id_autogen23_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-23">   </ul></div></div><select id="Infants" name="Infants" class="criteriaSelect selectInfants" data-bind="select2: true, options: infants, value: selectedInfants, optionsCaption: '' " title="Seleccione el número de infantes menores de dos años" style="display: none;" tabindex="-1"><option value=""></option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option></select>
                        <div class="clear"></div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="clear"></div>
                    <div class="dateWrapper selectDestinationWrapper criteria-side-by-side-xs-sm">
                        <div class="label"><span></span></div>
                        <label for="DepartureDate" class="small">Fecha de ida</label>
                        <input class="criteriaText big hasDatepicker" data-bind="value: departureDate" id="DepartureDate" name="DepartureDate" style="display:none;" type="text" value="" aria-hidden="true">
                        <label for="DepartureDateForDisplay" class="screenreader">Fecha de ida</label>
                        <input class="criteriaText big" data-bind="value: getShortDepartureDate, event: { blur: blurDepartureDate }" id="DepartureDateForDisplay" name="DepartureDateForDisplay" title="Usa el formato DD/MM/YYYY" type="text" value="">
                        <input type="hidden" id="departureDateString" name="DepartureDateString" data-bind="value: departureDate" value="2017-11-15">
                    </div>

                    <div id="flightCriteria-returndate-wrapper" data-bind="style: { visibility: travelMode() === 'RoundTrip' ? 'inherit' : 'hidden' }" style="visibility: inherit;" class="dateWrapper selectDestinationWrapper criteria-side-by-side-xs-sm criteria-margin-left-xs-sm">
                        <div class="label"><span></span></div>
                        <label for="ReturnDate" class="small">Fecha de regreso</label>
                        <input class="criteriaText big hasDatepicker" data-bind="value: returnDate" id="ReturnDate" name="ReturnDate" style="display:none;" type="text" value="" aria-hidden="true" title="Return date">
                        <label for="ReturnDateForDisplay" class="screenreader">Fecha de regreso</label>
                        <input class="criteriaText big" data-bind="value: getShortReturnDate, event: { blur: blurReturnDate }" id="ReturnDateForDisplay" name="ReturnDateForDisplay" title="Usa el formato DD/MM/YYYY" type="text" value="">
                        <input type="hidden" id="returnDateString" name="ReturnDateString" data-bind="value: returnDate" value="2017-11-15">
                    </div>

                    <div class="infantsWrapper hidden-xs">
                        <label for="Infants2" class="screenreader">Seleccione el número de infantes menores de dos años</label>
                        <div class="select2-container criteriaSelect selectInfants" id="s2id_Infants2" title="Seleccione el número de infantes menores de dos añosSeleccione el número de infantes menores de dos años" style="display: inline-block;"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-24">0 Infantes <span class="passengerDescription">(Menor de 2)</span></span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen24" class="select2-offscreen">Seleccione el número de infantes menores de dos añosSeleccione el número de infantes menores de dos años</label><input class="select2-focusser select2-offscreen ignore" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-24" id="s2id_autogen24"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen24_search" class="select2-offscreen">Seleccione el número de infantes menores de dos añosSeleccione el número de infantes menores de dos años</label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-24" id="s2id_autogen24_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-24">   </ul></div></div><select id="Infants2" name="Infants" class="criteriaSelect selectInfants" data-bind="select2: true, options: infants, value: selectedInfants, optionsCaption: '' " title="Seleccione el número de infantes menores de dos añosSeleccione el número de infantes menores de dos años" style="display: none;" tabindex="-1"><option value=""></option><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option></select>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-4">
                    <div class="calendar-currency-wrapper">
                        <div class="calendarSearch">
                            <fieldset class="styled radiogroup">
                                <legend aria-hidden="true">Seleccione una fecha exacta o ver precios del mes</legend>
                                <label for="rbCalendarNormal" id="NormalSearchWrapper" class="radioWrapper">
                                    <input type="radio" value="exact" id="rbCalendarNormal" name="ExactMonthDate" checked="checked">
                                    <span>Fechas exactas</span>
                                </label>
                                <label for="rbCalendar" id="CalenderSearchWrapper" class="radioWrapper">
                                    <input type="radio" value="month" id="rbCalendar" name="ExactMonthDate">
                                    <span>Precios del mes</span>
                                </label>
                                <div class="clear"></div>
                            </fieldset>
                        </div>

                        <div class="currencies">
                            <fieldset class="styled radiogroup">
                                <legend aria-hidden="true">Seleccione moneda</legend>
                                <label for="currencyPEN" class="radioWrapper currencyWrapper">
                                    <input type="radio" id="currencyPEN" name="Currency" checked="checked" value="PEN" data-bind="checked: currency">
                                    <span>PEN</span>
                                </label>
                                <label for="currencyUSD" class="radioWrapper currencyWrapper">
                                        <input type="radio" id="currencyUSD" name="Currency" value="USD" data-bind="checked: currency">
                                        <span>USD</span>
                                </label>
                                <div class="clear"></div>
                            </fieldset>
                        </div>
                        <div class="clear"></div>
                    </div>

                    
                </div>

                <div style="display: none;">
                    <label for="PromoCode" class="screenreader">Promo code</label>
                    <input style="display: none" class="criteriaText promo" id="PromoCode" name="PromoCode" placeholder="Promocode" type="text">

                    <input type="hidden" id="SpecialCampaignCode" name="SpecialCampaignCode">
                </div>

                <div class="clear"></div>
            </form>
        </div>


        <div id="flightCriteriaMinified" style="display: none;">
            Tu búsqueda:
            <span data-bind="text: getSelectedFromAirportName">Arequipa (AQP)</span>
            -
            <span data-bind="text: getSelectedToAirportName"></span>
            <div class="inline" data-bind="visible: selectedAdults">
                &nbsp;&nbsp;
                <span data-bind="text: getTotalPassengers">2</span>
                <span data-bind="text: getPassengersLabel">Pasajeros</span>

            </div>
            &nbsp;
            Vuelo ida:
            <span data-bind="text: getShortDepartureDate">15/11/2017</span>
            <div class="inline" data-bind="visible: returnDate & amp;&amp; showMinifiedReturn()()">
                Vuelo regreso:
                <span data-bind="text: getShortReturnDate">15/11/2017</span>
            </div>
            <a class="redlink short" id="aChangeSearch">Cambiar búsqueda<i class="down"></i></a>
            <div class="clear"></div>
        </div>

    </div>

<script type="text/javascript">
    $(function () {

        var lastBookingDate = new Date(2018, 2, 24);
        var earliestBookingDate = new Date(2017, 4, 9);


        var criteria = new FlightCriteria({
            controls: {
                minifiedFlightCriteria: $('#flightCriteriaMinified'),
                boxFlight: $("#box-flight"),
                tabsContainer: $("#tabs-container"),
                criteriaSelect: $("#box-flight .criteriaSelect"),
                criteriaSelectWithSearch: $("#box-flight .criteriaSelectWithSearch"),
                criteriaSelectWithoutSearch: $("#box-flight .criteriaSelectWithoutSearch"),
                OneWay: $("#box-flight #rbOneWayWrapper"),
                Roundtrip: $("#box-flight #rbRoundtripWrapper"),
                OneWayRadio: $("#box-flight #rbOneWay"),
                RoundtripRadio: $("#box-flight #rbRoundtrip"),
                flightCriteriaReturndateWrapper: $("#flightCriteria-returndate-wrapper"),
                departureCity: $("#box-flight #departureCity"),
                arrivalCity: $("#box-flight #arrivalCity"),
                arrivalCityDropDown: $("#box-flight #arrivalCityDrop"),
                changeSearch: $("#aChangeSearch"),
                flightCriteriaPremium: $("#box-flight #flightCriteriaPremium"),
                departureDateField: $("#box-flight #DepartureDate"),
                departureDateFieldForDisplay: $("#box-flight #DepartureDateForDisplay"),
                dateFieldLabel: $("#box-flight .dateWrapper .label"),
                returnDateField: $("#box-flight #ReturnDate"),
                returnDateFieldForDisplay: $("#box-flight #ReturnDateForDisplay"),
                form: $("#box-flight-form"),
                fromAirportWrapper: $("#box-flight #fromAirportWrapper"),
                toAirportWrapper: $("#box-flight #toAirportWrapper"),
                adultsChildrenWrapper: $("#box-flight #adultsChildrenWrapper"),
                infantsWrapper: $("#box-flight .infantsWrapper"),
                validationErrorsContainer: $("#box-flight #validationErrors"),
                continueLink: $("#box-flight #continueLink"),
                continueButton: $("#box-flight #btnContinue"),
                Adults: $("#box-flight .selectAdults"),
                children: $("#box-flight .selectChildren"),
                Infants: $("#box-flight .selectInfants"),
                loginFailDialog: $("#box-flight #loginFailure"),
                loginFailHtml: $("#box-flight #loginFailureErrorMessage"),
                currencyPen: $("#box-flight #currencyPEN"),
                currencyUsd: $("#box-flight #currencyUSD"),
                exact: $("#box-flight #rbCalendarNormal"),
                month: $("#box-flight #rbCalendar")
            },
            translations: {
                adultLabel: 'Adulto',
                adultsLabel: 'Adultos',
                childLabel: 'Ni&#241;o',
                childrenLabel: 'Ni&#241;os',
                childrenDescription: '(Menor de 14)',
                infantLabel: 'Infante',
                infantsLabel: 'Infantes',
                infantsDescription: '(Menor de 2)',
                guestLabel: 'Pasajero',
                guestsLabel: 'Pasajeros',
                oneWay: 'Ida',
                oneWayTooltip: 'Haz clic aqu&#237; para eliminar el vuelo de regreso',
                validationErrorMessage: 'Informaci&#243;n requerida',
                returnDateEarlierThanDepartureDate: 'El vuelo de ida debe ser antes que el vuelo de regreso',
                searchButtonLoading: 'Estamos cargando tu sue&#241;o...',
                searchButton: 'Encuentra tu vuelo',
                mustSelectAnyAdultOrChild: 'Debes seleccionar al menos un adulto o ni&#241;o',
                onlyOneInfantPerAdult: 'Solo se permite un infante por adulto ',
                selectReturnDate: 'Selecciona fecha regreso',
                selectDepartureDate: 'Selecciona fecha salida',
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
                monthNamesShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"],
                dayNames: 'pe' == "pe" ? ["domingo", "lunes", "martes", "miércoles", "jueves", "viernes", "sábado"] : ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
                dayNamesShort: ' pe' == "pe" ? ["dom", "lun", "mar", "mié", "jue", "vie", "sáb"] : ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
                dayNamesMin: 'pe' == "pe" ? ["D", "L", "M", "X", "J", "V", "S"] : ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
            },
            LastBookingDate: lastBookingDate,
            EarliestBookingDate: earliestBookingDate,
            IsIframe: false,
            showMinifiedFlightCriteria: $("#availabilityNormal").length > 0 ? true : false,
            savedCriteria: { "Flights": [], "TravelMode": null, "IsReturn": true, "ArrivalCity": null, "DepartureCity": null, "DepartureDate": "\/Date(1510780199844)\/", "DepartureDateString": null, "DepartureDateText": "2017-11-15", "ReturnDate": "\/Date(1510780199844)\/", "ReturnDateString": null, "ReturnDateText": "2017-11-15", "Adults": 1, "Children": null, "Infants": null, "Currency": "PEN", "Agency": null, "Service": null, "Lang": null, "PromoCode": null, "SpecialCampaignCode": null, "IsPremium": false, "ExactMonthDate": null, "CalendarSearch": false, "OutFlightNumber": null, "InFlightNumber": null, "OutClassCode": null, "InClassCode": null, "Utr": null, "gclid": null, "Utm_source": null, "Utm_medium": null, "Utm_term": null, "Utm_content": null, "Utm_campaign": null, "StandBy": false },
            preselectedFromAirport: null,
            preselectedToAirport: null,
            airports: [{ "Code": "AQP", "Name": "Arequipa (AQP)", "ShortName": "Arequipa", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [{ "Code": "CIX", "Name": "Chiclayo (CIX)", "ShortName": "Chiclayo", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CUZ", "Name": "Cusco  (CUZ)", "ShortName": "Cusco", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "IQT", "Name": "Iquitos (IQT)", "ShortName": "Iquitos", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "LIM", "Name": "Lima - Jorge Chavez (LIM)", "ShortName": "Lima", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "PIU", "Name": "Piura (PIU)", "ShortName": "Piura", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "TPP", "Name": "Tarapoto (TPP)", "ShortName": "Tarapoto", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }], "Routes": [], "ImageUrl": null, "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CIX", "Name": "Chiclayo (CIX)", "ShortName": "Chiclayo", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [{ "Code": "AQP", "Name": "Arequipa (AQP)", "ShortName": "Arequipa", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CUZ", "Name": "Cusco  (CUZ)", "ShortName": "Cusco", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "IQT", "Name": "Iquitos (IQT)", "ShortName": "Iquitos", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "LIM", "Name": "Lima - Jorge Chavez (LIM)", "ShortName": "Lima", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "PIU", "Name": "Piura (PIU)", "ShortName": "Piura", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "TPP", "Name": "Tarapoto (TPP)", "ShortName": "Tarapoto", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }], "Routes": [], "ImageUrl": null, "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CUZ", "Name": "Cusco  (CUZ)", "ShortName": "Cusco", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [{ "Code": "AQP", "Name": "Arequipa (AQP)", "ShortName": "Arequipa", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CIX", "Name": "Chiclayo (CIX)", "ShortName": "Chiclayo", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "IQT", "Name": "Iquitos (IQT)", "ShortName": "Iquitos", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "LIM", "Name": "Lima - Jorge Chavez (LIM)", "ShortName": "Lima", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "PIU", "Name": "Piura (PIU)", "ShortName": "Piura", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "TPP", "Name": "Tarapoto (TPP)", "ShortName": "Tarapoto", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }], "Routes": [], "ImageUrl": null, "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "IQT", "Name": "Iquitos (IQT)", "ShortName": "Iquitos", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [{ "Code": "AQP", "Name": "Arequipa (AQP)", "ShortName": "Arequipa", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CIX", "Name": "Chiclayo (CIX)", "ShortName": "Chiclayo", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CUZ", "Name": "Cusco  (CUZ)", "ShortName": "Cusco", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "LIM", "Name": "Lima - Jorge Chavez (LIM)", "ShortName": "Lima", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "PIU", "Name": "Piura (PIU)", "ShortName": "Piura", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "TPP", "Name": "Tarapoto (TPP)", "ShortName": "Tarapoto", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }], "Routes": [], "ImageUrl": null, "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "LIM", "Name": "Lima - Jorge Chavez (LIM)", "ShortName": "Lima", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [{ "Code": "AQP", "Name": "Arequipa (AQP)", "ShortName": "Arequipa", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CIX", "Name": "Chiclayo (CIX)", "ShortName": "Chiclayo", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CUZ", "Name": "Cusco  (CUZ)", "ShortName": "Cusco", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "IQT", "Name": "Iquitos (IQT)", "ShortName": "Iquitos", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "LIM", "Name": "Lima - Jorge Chavez (LIM)", "ShortName": "Lima", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "PIU", "Name": "Piura (PIU)", "ShortName": "Piura", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "TPP", "Name": "Tarapoto (TPP)", "ShortName": "Tarapoto", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }], "Routes": [], "ImageUrl": null, "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "PIU", "Name": "Piura (PIU)", "ShortName": "Piura", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [{ "Code": "AQP", "Name": "Arequipa (AQP)", "ShortName": "Arequipa", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CIX", "Name": "Chiclayo (CIX)", "ShortName": "Chiclayo", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CUZ", "Name": "Cusco  (CUZ)", "ShortName": "Cusco", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "IQT", "Name": "Iquitos (IQT)", "ShortName": "Iquitos", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "LIM", "Name": "Lima - Jorge Chavez (LIM)", "ShortName": "Lima", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "TPP", "Name": "Tarapoto (TPP)", "ShortName": "Tarapoto", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }], "Routes": [], "ImageUrl": null, "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "TPP", "Name": "Tarapoto (TPP)", "ShortName": "Tarapoto", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [{ "Code": "AQP", "Name": "Arequipa (AQP)", "ShortName": "Arequipa", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CIX", "Name": "Chiclayo (CIX)", "ShortName": "Chiclayo", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "CUZ", "Name": "Cusco  (CUZ)", "ShortName": "Cusco", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "IQT", "Name": "Iquitos (IQT)", "ShortName": "Iquitos", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "LIM", "Name": "Lima - Jorge Chavez (LIM)", "ShortName": "Lima", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }, { "Code": "PIU", "Name": "Piura (PIU)", "ShortName": "Piura", "InternationalName": "", "Highlight": false, "Latitude": 0, "Longitude": 0, "BlockedDestinations": [], "Connections": [], "Routes": [], "ImageUrl": "", "CountryCode": "PE", "OnlyDestinationAirport": false }], "Routes": [], "ImageUrl": null, "CountryCode": "PE", "OnlyDestinationAirport": false }],
            internationalAirports: ["MIA", "CUN", "PTY", "BLB", "UIO", "ADZ", "BAQ", "BOG", "CLO", "CPE", "CTG", "MDE", "MTR", "PEI", "SMR", "APO", "VUP", "BGA", "LET"],
            departureDate: '2017-11-15',
            returnDate: '2017-11-15',
            language: 'pe',
            currentCriteriaTab: 'Flight',
            isAgency: false //TODO
        });
        criteria.init();


        setTimeout(function () {
            $("#flightcriteria-container-span").css('visibility', 'visible').hide().fadeIn('slow');
        }, 300);


    });
</script>
            </div>
</asp:Content>
