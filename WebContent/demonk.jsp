


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1"><title>
	DEFENCE RESEARCH & DEVELOPMENT ORGANISATION (DRDO)
</title><meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" /><meta charset="utf-8" /><meta http-equiv="PRAGMA" content="NO-CACHE" /><meta http-equiv="EXPIRES" content="0" /><meta http-equiv="EXPIRES" content="TUE, 01 JAN 1980 1:00:00 GMT" /><meta http-equiv="CACHE-CONTROL" content="MAX-AGE=0" /><meta http-equiv="CACHE-CONTROL" content="PRIVATE" /><meta http-equiv="CACHE-CONTROL" content="NO-CACHE" /><meta http-equiv="CACHE-CONTROL" content="NO-STORE" /><meta http-equiv="CACHE-CONTROL" content="PRE-CHECK=0" /><meta http-equiv="CACHE-CONTROL" content="POST-CHECK=0" /><meta http-equiv="CACHE-CONTROL" content="MUST-REVALIDATE" /><meta name="keywords" content="DRDO , DEFENCE RESEARCH &amp; DEVELOPMENT ORGANISATION" /><meta http-equiv="Content-Language" content="en-us" /><meta name="distribution" content="Global" /><meta name="robots" content="index,follow" /><meta name="language" content="en-gb" /><meta name="audience" content="All" /><link href="../styles/media.css" rel="stylesheet" type="text/css" /><link href="../styles/HeaderNav.css" rel="stylesheet" type="text/css" /><link href="../styles/FooterNav.css" rel="stylesheet" type="text/css" /><link href="../styles/DataEntryStyle.css" rel="stylesheet" type="text/css" />
    <script src="../scripts/jquery-1.8.2.js" type="text/javascript"></script>
    <script src="../scripts/HeaderNav.js" type="text/javascript"></script>
    <script type="text/javascript">
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);
        (function (e) {
            disableBackButton();
        });
    </script>
    <script type="text/javascript">
        function burstCache() {
            if (!(navigator.onLine)) {
                document.body.innerHTML = "Loading...";
                window.location = "/ServerError.htm";
            }
        }
        setTimeout("burstCache()", 0);
        
    </script>
    <script language="javascript" type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }

        function isRealNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57) && (charCode != 46))
                    return false;

            return true;
        }

        function isCharacterKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || (charCode <= 32))
                return true;
            return false;
        }

        function isAlphaNumericKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || (charCode <= 32))
                return true;
            else if (charCode >= 48 && charCode <= 57)
                return true;
            //else return false 
            return false;
        }

        function isDateKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 47 || charCode > 57))
                return false;
            return true;
        }
        //Check extension of uploaded file
        function check_extension(filename, submitId, permittedFileType, divmessage) {
            //var permittedFileType = ['gif', 'jpg', 'jpeg', 'png'];
            var fext = filename.split('.').pop().toLowerCase();
            var resultFile = validate_filetype(fext, permittedFileType);
            if (resultFile === false) {
                document.getElementById(divmessage).innerHTML = "Invalid Extension. Please Select a Valid file ";
                return false;
            }
            else {
                document.getElementById(divmessage).innerHTML = "";
                return true;
            }
        }
        //Check extension of uploaded file Matrch Extension
        function validate_filetype(fext, ftype) {
            for (var num in ftype) {
                if (fext == ftype[num])
                    return true;
            }

            return false;
        }

       
    </script>
    <script type="text/javascript" language="javascript">
        function ConfirmDownload() {
            if (confirm("\n Do You Want To Download/Save the file on Computer ? \n क्या आप फाइल अपने कंप्यूटर पर डाउनलोड/सुरक्षित  करना चाहते है ?"))
                return true;
            else
                return false;
        }
        function ConfirmPrint() {
            if (confirm("\n Do You Want To Print Report ? \n क्या आप रिपोर्ट प्रिंट करना चाहते है ?"))
                return true;
            else
                return false;
        }

        function ConfirmSave() {
            if (confirm("\n Do You Want To Save the Entry ? \n क्या आप विवरण को सुरक्षित करना चाहते है ?"))
                return true;
            else
                return false;
        }

        function ConfirmView() {
            if (confirm("\nDo you Want to Veiw Data ? \nक्या आप विवरण  देखना चाहते है ?")) {
                return true;
            }
            return false;
        }

        function ConfirmAdd() {
            if (confirm("\n Do You want To Add New Record ? \n  क्या आप नया विवरण जोड़ना चाहते है ? ")) {
                return true;
            }
            return false;
        }

        function ConfirmEdit() {
            if (confirm("\n Do You want To Edit the Selected Record ? \n क्या आप विवरण का संशोधन करना चाहते है ?")) {
                return true;
            }
            return false;
        }

        function ConfirmUpdate() {
            if (confirm("\n Do You want To Update the Selected Record ? \n  क्या आप विवरण को सुरक्षित करना चाहते है ?")) {
                return true;
            }
            return false;
        }

        function ConfirmDelete() {
            if (confirm("\n **** DELETE DELETE DELETE **** \n **** डिलीट डिलीट डिलीट डिलीट **** \n \n \n Do You want To Delete the Selected Record ? \n  क्या आप विवरण को मिटाना चाहते है ?")) {
                return true;
            }
            return false;
        }
    </script>
    
    <script type="text/javascript" language="javascript">
        //function to fetch data using GET method
        function RefreshCAPTCHAImage() {

            var a = String.fromCharCode(65 + Math.ceil(Math.random() * 9));
            var b = String.fromCharCode(65 + Math.ceil(Math.random() * 9));
            var c = String.fromCharCode(65 + Math.ceil(Math.random() * 9));
            var d = Math.ceil(Math.random() * 9) + '';
            var e = Math.ceil(Math.random() * 9) + '';
            var f = Math.ceil(Math.random() * 9) + '';
            var code = a + '' + b + '' + c + '' + d + '' + e + '' + f;

            var img = document.getElementById("ctl00_cph_FixedWidth_IMGCaptcha");
            img.src = "../CaptchaImage.aspx?query=" + Math.random() + "&Code=" + code;

            document.getElementById("ctl00_cph_FixedWidth_HiddenField_CaptchaCode").value = code;
        }

        function ValidateCAPTCHA() {
            var captcha = document.getElementById("ctl00_cph_FixedWidth_TxtCAPTCHA").value;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_Captcha");
            $(span).removeClass();
            if ($.trim(captcha).length == 6) {
                //$(span).addClass("SpanEntryCorrect");

                if (captcha.toUpperCase() == document.getElementById("ctl00_cph_FixedWidth_HiddenField_CaptchaCode").value.toUpperCase())
                    return true;
                else
                    return false;
            }
            else {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
        }
        function ValidateFormData() {
            //Clear messge 
            document.getElementById("ctl00_cph_FixedWidth_lbl_DataEntryMessage").value = "";

            var sMessage = "";

            if (!ValidateCandidateName())
                sMessage += "\n Candidate First Name is Mandatory.";
            if (!ValidateFatherName())
                sMessage += "\n Father First Name is Mandatory.";
            if (!ValidateMotherName())
                sMessage += "\n Mother First Name is Mandatory.";
            if (!ValidateDateOfBirth())
                sMessage += "\n Age should not less than from 18 years and more than 60 years";
            if (!ValidateGender())
                sMessage += "\n Invalid Gender (Gender should match the Title you have selected).";
            if (!ValidateNationality())
                sMessage += "\n Select Nationality.";
            if (!ValidateMobileNumber())
                sMessage += "\n Invalid Mobile Number.";
            //            if (!ValidateEmail())
            //                sMessage += "\n Invalid Email ID.";

            if (!ValidateCategory())
                sMessage += "\n Select Category.";
            if (!ValidateSubCategory())
                sMessage += "\n Select Sub Category.";

            if (!ValidateESM())
                sMessage += "\n Enter Ex-Service Information.";



            if (!ValidateAddressCorrespondence())
                sMessage += "\n Update Correspondence Address .";
            if (!ValidateAddressPermanent())
                sMessage += "\n Update Permanent Address .";

            if (!ValidateIdentityProof())
                sMessage += "\n Enter Identity Proof Details.";
            if (!ValidatePhysicalCharacteristics())
                sMessage += "\n Enter Physical Characteristics.";
            if (!ValidateIdentificationMark())
                sMessage += "\n Enter Identification Mark.";


            if (!ValidateCAPTCHA())
                sMessage += "\n Invalid CAPTCHA / security Code.";


            //Confirm
            if (sMessage != "") {
                alert("Mandatory Field Incomplete - अनिवार्य जानकारी अधूरी है \n" +
                        sMessage +
                        "\n\nPlease Fill the Mandatory fields. कृपया अनिवार्य जानकारी भरे ");
                return false;
            }

            if (confirm("Do you Want to Save the Personal Details?\nक्या आप व्यक्तिगत विवरण सुरक्षित करना चाहते है ?")) {
                document.getElementById("ctl00_cph_FixedWidth_btn_Submit_Appliction_step1").Enabled = "false";
                return true;
            }
            return false;
        }


        function ValidateCandidateName() {

            var fname = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CandidateFirstName").value;
            //var mname = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CandidateMiddleName").value;
            //var lname = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CandidateLastName").value;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_CandidateName");
            $(span).removeClass();
            if ($.trim(fname) != "") {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }
            else {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
        }
        function ValidateFatherName() {

            var fname = document.getElementById("ctl00_cph_FixedWidth_txt_vc_FatherFirstName").value;
            //var mname = document.getElementById("ctl00_cph_FixedWidth_txt_vc_FatherMiddleName").value;
            //var lname = document.getElementById("ctl00_cph_FixedWidth_txt_vc_FatherLastName").value;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_FatherName");
            $(span).removeClass();
            if ($.trim(fname) != "") {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }
            else {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
        }
        function ValidateMotherName() {

            var fname = document.getElementById("ctl00_cph_FixedWidth_txt_vc_MotherFirstName").value;
            //var mname = document.getElementById("ctl00_cph_FixedWidth_txt_vc_MotherMiddleName").value;
            //var lname = document.getElementById("ctl00_cph_FixedWidth_txt_vc_MotherLastName").value;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_MotherName");
            $(span).removeClass();
            if ($.trim(fname) != "") {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }
            else {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
        }
        function ValidateGender() {

            var gender = document.getElementById("ctl00_cph_FixedWidth_ddl_Gender").value;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_Gender");
            $(span).removeClass();

            $(document.getElementById("ctl00_cph_FixedWidth_ddl_vc_CandidateInitial")).removeClass("errorfield");
            $(document.getElementById("ctl00_cph_FixedWidth_ddl_Gender")).removeClass("errorfield");



            if ((gender) != "0") {

                var title = document.getElementById("ctl00_cph_FixedWidth_ddl_vc_CandidateInitial").value;
                if ((gender == "M" && title != "MR.") || (gender == "F" && title == "MR.")) {
                    $(span).addClass("SpanEntryWrong");


                    $(document.getElementById("ctl00_cph_FixedWidth_ddl_vc_CandidateInitial")).addClass("errorfield");
                    $(document.getElementById("ctl00_cph_FixedWidth_ddl_Gender")).addClass("errorfield");

                    return false;
                }
                else {
                    $(span).addClass("SpanEntryCorrect");
                    return true;
                }
            }
            else {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
        }

        function ValidateNationality() {


            $("#Span_OtherNationality").removeClass();

            var nationality = document.getElementById("ctl00_cph_FixedWidth_ddl_Nationality").value;
            var nationalityother = document.getElementById("ctl00_cph_FixedWidth_txt_vc_NationalityOther").value;
            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_Nationality");
            $(span).removeClass();

            if ((nationality) == "I") {
                $("#Span_OtherNationality").addClass('hidden');

                $(span).addClass("SpanEntryCorrect");
                return true;
            }
            else if ((nationality) == "O") {
                $("#Span_OtherNationality").addClass('visible');

                if ($.trim(nationalityother).length != 0) {
                    $(span).addClass("SpanEntryCorrect");
                    return true;
                }
                else {

                    $(span).addClass("SpanEntryWrong");
                    return false;
                }

            }

            else {
                $("#Span_OtherNationality").addClass('hidden');

                $(span).addClass("SpanEntryWrong");
                return false;
            }
        }

        function ValidateMobileNumber() {

            var mobilenumber = document.getElementById("ctl00_cph_FixedWidth_txt_vc_MobileNumber").value;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_MobileNumber");
            $(span).removeClass();
            if ($.trim(mobilenumber).length == 10) {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }
            else {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
        }
        function ValidateDateOfBirth() {
            var dd = parseInt(document.getElementById("ctl00_cph_FixedWidth_SelectDateOfBirthDay").value, 10);
            var mm = parseInt(document.getElementById("ctl00_cph_FixedWidth_SelectDateOfBirthMonth").value, 10);
            var yyyy = parseInt(document.getElementById("ctl00_cph_FixedWidth_SelectDateOfBirthYear").value, 10);


            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_DateOfBirth");
            $(span).removeClass();


            if (isNaN(dd) || isNaN(mm) || isNaN(yyyy)) {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
            else if (dd == 0 || mm == 0 || yyyy == 0) {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
            else {
                switch (mm) {
                    case 1: //Jan
                    case 3: //Mar
                    case 5: //May
                    case 7: //Jul
                    case 8: //Aug
                    case 10: //Oct
                    case 12: //Dec
                        if (dd < 1 || dd > 31) {
                            $(span).addClass("SpanEntryWrong");
                            return false;
                        }
                        break;
                    case 4: //Apr
                    case 6: //Jun
                    case 9: //Sep
                    case 11: //Nov
                        if (dd < 1 || dd > 30) {
                            $(span).addClass("SpanEntryWrong");
                            return false;
                        }
                        break;
                    case 2: //Feb
                        if (yyyy % 4 == 0) {
                            if (dd < 1 || dd > 29) {
                                $(span).addClass("SpanEntryWrong");
                                return false;
                            }
                        }
                        else if (dd < 1 || dd > 28) {
                            {
                                $(span).addClass("SpanEntryWrong");
                                return false;
                            }
                        }
                        break;
                    default:
                        $(span).addClass("SpanEntryWrong");
                        return false;
                }
            }

            //Calculate Candidate Age
            //Calculate Candidate Age
            var dob = new Date(yyyy, (mm - 1), dd); // month starts from 0 =jan
            var cutoffdate = new Date("1998", "01", "08"); //month starts from 9 =oct

            var startbirthdate = new Date("1956", "01", "08"); //month starts from 9 =oct

            if (dob > cutoffdate) {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
            else if (dob < startbirthdate) {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
            else {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }

        }

        function ValidateEmail() {
            var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

            var email = document.getElementById("ctl00_cph_FixedWidth_txt_vc_Email").innerHTML;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_EMail");
            $(span).removeClass();
            if (re.test(email)) {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }
            else {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
            //return re.test(email);
        }

        function ValidateCategory() {
            var ur = document.getElementById("ctl00_cph_FixedWidth_rbt_vc_Category_UR").checked;
            var sc = document.getElementById("ctl00_cph_FixedWidth_rbt_vc_Category_SC").checked;
            var st = document.getElementById("ctl00_cph_FixedWidth_rbt_vc_Category_ST").checked;
            var obc = document.getElementById("ctl00_cph_FixedWidth_rbt_vc_Category_OBC").checked;


            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_Categroy");
            $(span).removeClass();
            if (ur == true || sc == true || st == true || obc == true) {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }
            else {
                $(span).addClass("SpanEntryWrong");
                return false;
            }

        }

        function ValidateSubCategory() {
            var msp = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_MSP").checked;
            var gs = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_GS").checked;
            var pwd = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_PWD").checked;
            var wd = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_WD").checked;
            var esm = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_ESM").checked;

            var oh = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_OH").checked;
            var hi = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_HI").checked;
            var vi = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_VI").checked;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_SubCategroy");
            $(span).removeClass();
            if (msp == false && gs == false && pwd == false && wd == false && esm == false) {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }

            if (pwd == true) {
                if (oh == true || hi == true || vi == true) {
                    $(span).addClass("SpanEntryCorrect");
                    return true;
                }
                else {
                    $(span).addClass("SpanEntryWrong");
                    return false;
                }
            }


            if (esm == true) {

                return true;
            }

            return true;
        }

        function ValidateAddressCorrespondence() {

            var cn = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondenceName").value;
            var ca1 = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondenceAddress1").value;
            var cc = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondenceCity").value;
            var cs = document.getElementById("ctl00_cph_FixedWidth_ddl_vc_CorrespondenceState").value;
            var cp = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondencePinCode").value;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_CorrespondenceAddress");
            $(span).removeClass();
            if (($.trim(cn) == "") || ($.trim(ca1) == "") || ($.trim(cc) == "") || ($.trim(cs) == "") || ($.trim(cp) == "")) {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
            else {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }

        }
        function ValidateAddressPermanent() {

            var pn = document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentName").value;
            var pa1 = document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentAddress1").value;
            var pc = document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentCity").value;
            var ps = document.getElementById("ctl00_cph_FixedWidth_ddl_vc_PermanentState").value;
            var pp = document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentPinCode").value

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_PermanentAddress");
            $(span).removeClass();
            if (($.trim(pn) == "") || ($.trim(pa1) == "") || ($.trim(pc) == "") || ($.trim(ps) == "") || ($.trim(pp) == "")) {
                $(span).addClass("SpanEntryWrong");
                return false;
            }
            else {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }

        }

        function ValidateIdentityProof() {
            var idt = document.getElementById("ctl00_cph_FixedWidth_ddl_vc_TypeOfIdentityProof").value;
            var idn = document.getElementById("ctl00_cph_FixedWidth_txt_vc_IdentityProofNumber").value;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_IdentityProof");
            $(span).removeClass();

            $(document.getElementById("ctl00_cph_FixedWidth_ddl_vc_TypeOfIdentityProof")).removeClass("errorfield");
            $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_IdentityProofNumber")).removeClass("errorfield");


            if (($.trim(idt) == "") || ($.trim(idn) == "")) {
                $(span).addClass("SpanEntryWrong");

                if ($.trim(idt) == "") $(document.getElementById("ctl00_cph_FixedWidth_ddl_vc_TypeOfIdentityProof")).addClass("errorfield");
                if ($.trim(idn) == "") $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_IdentityProofNumber")).addClass("errorfield");

                return false;
            }
            else {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }
        }


        function ValidatePhysicalCharacteristics() {
            var hght = document.getElementById("ctl00_cph_FixedWidth_txt_vc_HeightInCentimeter").value;
            var wght = document.getElementById("ctl00_cph_FixedWidth_txt_vc_WeightInKilogram").value;

            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_PhysicalCharacteristics");
            $(span).removeClass();

            $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_HeightInCentimeter")).removeClass("errorfield");
            $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_WeightInKilogram")).removeClass("errorfield");



            if (($.trim(hght) == "") || ($.trim(wght) == "")) {
                $(span).addClass("SpanEntryWrong");

                if ($.trim(hght) == "") $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_HeightInCentimeter")).addClass("errorfield");
                if ($.trim(wght) == "") $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_WeightInKilogram")).addClass("errorfield");

                return false;
            }
            else {

                //Convert Height in Feet and Show
                var ih = parseInt($.trim(hght));
                var iinch = ih / 2.54;
                var ifeet = iinch / 12;
                iinch = iinch % 12;
                document.getElementById("spanHeightInFeet").innerHTML = parseFloat(ifeet).toFixed(2) + " Feet ";
                $(span).addClass("SpanEntryCorrect");
                return true;



            }
        }

        function ValidateIdentificationMark() {
            var im = document.getElementById("ctl00_cph_FixedWidth_txt_vc_IdentificationMark").value;


            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_IdentificationMark");
            $(span).removeClass();

            $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_IdentificationMark")).removeClass("errorfield");


            if ($.trim(im) == "") {
                $(span).addClass("SpanEntryWrong");

                if ($.trim(im) == "") $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_IdentificationMark")).addClass("errorfield");
                return false;
            }
            else {
                $(span).addClass("SpanEntryCorrect");
                return true;
            }
        }

        function ValidateESM() {
            var esm = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_ESM").checked;
            var esm_yes = document.getElementById("ctl00_cph_FixedWidth_rbt_vc_ESM_Yes").checked;


            var span = document.getElementById("ctl00_cph_FixedWidth_spanentry_ESM");
            $(span).removeClass();


            $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_NameOfUnit")).removeClass("errorfield");
            $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_Rank")).removeClass("errorfield");
            $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_DOJ")).removeClass("errorfield");
            $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_DOD")).removeClass("errorfield");
            $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_CO_Name")).removeClass("errorfield");
            $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_CO_ContactNumber")).removeClass("errorfield");

            //Ask for disability type
            if ((esm == true) && (esm_yes == true)) {

                var en = document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_NameOfUnit").value;
                var er = document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_Rank").value;
                var doj = document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_DOJ").value;
                var dod = document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_DOD").value;
                var co = document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_CO_Name").value
                var cno = document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_CO_ContactNumber").value

                if (($.trim(en) == "") || ($.trim(er) == "") || ($.trim(doj) == "") || ($.trim(dod) == "") || ($.trim(co) == "") || ($.trim(cno) == "")) {
                    $(span).addClass("SpanEntryWrong");

                    if ($.trim(en) == "") $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_NameOfUnit")).addClass("errorfield");
                    if ($.trim(er) == "") $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_Rank")).addClass("errorfield");
                    if ($.trim(doj) == "") $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_DOJ")).addClass("errorfield");
                    if ($.trim(dod) == "") $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_DOD")).addClass("errorfield");
                    if ($.trim(co) == "") $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_CO_Name")).addClass("errorfield");
                    if ($.trim(cno) == "") $(document.getElementById("ctl00_cph_FixedWidth_txt_vc_ESM_CO_ContactNumber")).addClass("errorfield");

                    return false;
                }
                else {
                    $(span).addClass("SpanEntryCorrect");
                    return true;
                }

            }
            else {
                return true;
            }
        }

        function Configure_Nationality() {
            var nationality = document.getElementById("ctl00_cph_FixedWidth_ddl_Nationality").value;

            $("#Span_OtherNationality").removeClass();
            if ((nationality) == "I") {
                $("#Span_OtherNationality").addClass('hidden');
            }
            else if ((nationality) == "O") {
                $("#Span_OtherNationality").addClass('visible');
            }
            else {
                $("#Span_OtherNationality").addClass('hidden');

            }
        }

        function Configure_PWD() {
            var pwd = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_PWD").checked;
            //Ask for disability type
            $("#tbl_PWD_Option").removeClass();
            if (pwd == true) {
                $("#tbl_PWD_Option").addClass("visible");
            }
            else {
                document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_OH").checked = false;
                document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_HI").checked = false;
                document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_VI").checked = false;

                $("#tbl_PWD_Option").addClass("hidden");
                $("#tbl_PWD_Option").attr("height", "0px");
            }
        }

        function Configure_ESM() {
            var esm = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_ESM").checked;
            //Ask for disability type
            $("#tbl_ESM_Option").removeClass();
            if (esm == true) {
                $("#tbl_ESM_Option").addClass("visible");
            }
            else {
                document.getElementById("ctl00_cph_FixedWidth_rbt_vc_ESM_Yes").checked = false;
                $("#tbl_ESM_option_yes").removeClass();
                $("#tbl_ESM_option_yes").addClass("hidden");
                $("#tbl_ESM_option_yes").attr("height", "0px");


                $("#tbl_ESM_Option").addClass("hidden");
                $("#tbl_ESM_Option").attr("height", "0px");
            }
        }

        function Configure_ESM_YesNo() {
            var esm = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_ESM").checked;
            var esm_yes = document.getElementById("ctl00_cph_FixedWidth_rbt_vc_ESM_Yes").checked;

            //Ask for disability type
            $("#tbl_ESM_option_yes").removeClass();
            if ((esm == true) && (esm_yes == true)) {
                $("#tbl_ESM_option_yes").addClass("visible");
            }
            else {
                $("#tbl_ESM_option_yes").addClass("hidden");
                $("#tbl_ESM_option_yes").attr("height", "0px");
            }
        }

        function Configure_VI() {

            var vi = document.getElementById("ctl00_cph_FixedWidth_chk_bt_SubCategory_VI").checked;
            $("#tbl_VI_Details").removeClass();
            if (vi == true) {
                $("#tbl_VI_Details").addClass("visible");
            }
            else {
                $("#tbl_VI_Details").addClass("hidden");
                $("#tbl_VI_Details").attr("height", "0px");
            }
        }

        function CopyAddress() {
            if (confirm("Do you Want To Copy Correspondence Address into Permanent Address ? ")) {
                document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentName").value = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondenceName").value;
                document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentAddress1").value = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondenceAddress1").value;
                document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentAddress2").value = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondenceAddress2").value;
                document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentAddress3").value = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondenceAddress3").value;
                document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentCity").value = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondenceCity").value;
                document.getElementById("ctl00_cph_FixedWidth_ddl_vc_PermanentState").value = document.getElementById("ctl00_cph_FixedWidth_ddl_vc_CorrespondenceState").value;
                document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentPinCode").value = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondencePinCode").value;
                document.getElementById("ctl00_cph_FixedWidth_txt_vc_PermanentLandlineNumber").value = document.getElementById("ctl00_cph_FixedWidth_txt_vc_CorrespondenceLandlineNumber").value;
            }
        }
    </script>

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        $(function () {
            blinkeffect('#txtblnk');
        })
        function blinkeffect(selector) {
            $(selector).fadeOut('slow', function () {
                $(this).fadeIn('slow', function () {
                    blinkeffect(this);
                });
            });
        }
    </script>
</head>
<body style="margin-top: 110px; margin-bottom: 50px;">
    <form name="aspnetForm" method="post" action="./ApplicationFormStep1.aspx" id="aspnetForm" autocorrect="off" autocomplete="off">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="C+XkhYuiirueSi+n2GBn8dyGG18sefuUUKuBQRrJ+hyM2Wj/MkzTLmIhcRyO+Mnh5bEfD3sUZ4ZiU0M84ATud+9hM9WmNeQxn5CMyol8c4Gt5QJl9ihDerdp/wJNKOynxKB0HRggim8I1HdbrUzofNcKXFNhdg8kJOE39mjeztNDk8vvhWrA/aRy0wip5yK0Vu3hNaYckphtIh4oas3gX/LRg5+KekGNMCeI/EEOQNznbY301MPOr/zOOwYR59CNOkqypJynvyg9eLIF13YbZOQsIQChl41BgDMFsdd2mpX2qzpbTzL+9e2bDoto6tfJahs+gKVCH2Gc9Cu/9tZl1KP97Rc3AMnazFrsZDUrYP7jrXee1ViS/chAsGdU3Su3UZ1PN9lY22EJhQT6KGTcOt9Laaj11ObhQb3aWNmL6XyJfRk1MvP1I+8lRZqYqQ8MGjOrlypyNGYix524PdfwkzYs0ttDJszc5Mc6ZrEwqnb8/D/uwI5a7a8ff+qwU59ZI9RzcKkuZ8kETfYeMAxN93vtbe0Mf2ZnCDTshyRiqK/M1gW7PRj0HTKbmEqdf28MUEs4LcTBtTaXSIXQEtgNZuupPr76Ts3A3RuEMiNlRQ4+o4ixmNWOkAnkZ6gLm88Xw3/Lcw82+4zBI//+SU3bVrZqwVvZhAT1WTqD4QTCg0dbtrLsYo6Om80FJuniiEWbHaZJNNetdXxxqA2rLsZ3KUdpECScdvTVBpJQpcxi4R5UZNcVYew2X26twgbpMBA4jg605/hzpIw/31j8cnshYpxH+lAdWky32DDFml362oPsQuXReDKlUFCoaexX6TP/ZA4j/FO1ovqtLn773xfbZgb5REvMMDvq3zr06JkG7ep444qeRyCJvmRj+q/5jM8NXX95n2opDgef+JbFT+/qrCyRL6Yuucq4mA2fw8U1MjBZD9kOUVPmBOMfAna07NCra7bayfnLcSwHMeJ8XtpXexUrslPaiSLFd7G+w2gpp09xPfCdqjYYvHN91PJSKCPqO8PAlPymA4AEvuYSPlpMOK+B8yE8X1mocyYeYpoz9Ua7xhcwZN29WFA+XS71CI/g/Vu/+oRGTMI1feqQZ4hty+qgMLuC6XIDaAwf9O5CHN/ZQr3GBjvO77qq+FE6jJ+zci+stHzB/smoiYRkeSl5zPXHNcFj2ydr5b51JMfggNDTdeHY4F8SlOhDelF/uEOptiWJ98IbYV2lHwSM2Dur6OzXl1xgaCiRrqyo5XDzzJHZCSUv0WnK8+iGTioafkNU6dHDBk6g3ObOzDk2CZQsI89Rnedko5rxcCVMYB20PW2A5zQmRmchEXXXsFrcjTj3sGXgumhRjIl90iRpRKCQlZ7T+zaSCZVet584wtaTnpQGdPyT5HOhNgg/CCNDDFqoaV46a+dJi10CxykP/9RcjJueDJ5gihWLZX70ULK4y6YSxBFRH4j7LlBBt6Rs8a0yfczJx/U/svyNLfzvijBDSuMhWDA+yf/DfzXiBBfG8PVpsHULG3jtxFcWLAtQJRtELcyhd88kXYNTily/8NGlnjx/FTtvP2jPmb2QBnJVwQwYx3I0z+fISgoP1ECdldaPNhC8WQkcTUfyCrFDssyfxDH4pLXNvs9RY/xvMH0k+68+mNC5V9shemCLC/pFe6Ofrps2rV+4T2TpXnbnDQ6tFXJ2GgoeH2yqkEoevVf3uTymV5lAJ3OlXKKk5tbNBQJh1z6FWo7KyorAlAT1Yq70q3WonTIhA6vecG+fW9tEl1KeFUEEv+DHwWXr08pLHYqD7p279g+PBWQ7MzuIg2MWR8AWcSEfZfSHXisdBt/7Rec25R1vJgdBrdqTu8G05/HuMzEanRz6HxX/NasZaHQcqUongOuqa2eYu1Ph9IcgqCf46O8xN5+ibgbVkohusSG8b2o62dc1ev5FitkUL701KA==" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=4yqYyJRk_8EN54XDeMAHFgqb85EU08JrBvGgDHnz7Z9L_vamwdo93On3XOQ27mYAtKpEPaTMS-YTdjpUAl9TX9jXz6Dry5B-bvX6rHKXme01&amp;t=635803488500000000" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=y9CCOIuhYGrndOoHvVC0Tevt0NrpDC6bIURbbKdN-F0f_60wznDBhc1Vn33DO23Hh4kbuFftQuPYHM9jyp8o55UBpTo0vcvQLC2RgRecsd_55WGnsuEAcAUyB5S17n28nvdqzfYwrh5IXHVWEEQ4jhhhOzsmxZ3hOo3xqRvqe8e4zxKjvJownUXqj513t0gv0&amp;t=5f9d5645" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
//]]>
</script>

<script src="/ScriptResource.axd?d=p7S4YhxKZtZ-NRzEjpCpyhzlJJ8nwyUgaHypTHXa7f-J7wTG09qs9XxVylJl13OW3dp1_v9GyL8NLFH9-GGedK81uFMY3M_S5KK3fm0MejXcOLrb-0Q9B2_35yIyf7cIEnAPIvKYVBGriBHZUN8uatVG9HvYmbEbejEE1AYA8huvbv938gpVV6xGiI1hPEJE0&amp;t=5f9d5645" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="B3E3D7D3" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
</div>
    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'aspnetForm', [], [], [], 90, 'ctl00');
//]]>
</script>

    <div id="mask">
    </div>
    <div align="center">
        <div align="center" class="header" id="header" style="display: table-cell;">
           <table border="0" cellpadding="0" cellspacing="0" width="1000px" id="tbl_Header_Big_Anonymous">
                <tr>
                    <td class="header-logo" rowspan="1" onclick="window.location='/default.aspx';" style="cursor: pointer;">
                    </td>
                    <td class="header-Text">
                        <br />
                        DEFENCE RESEARCH & DEVELOPMENT ORGANISATION (DRDO)
                        <br /><br />
                        <span style="display:block;text-align:center;font-size: .9em; padding-bottom: 10px;">Centre for Personnel Talent Management
                            (CEPTAM)<br /><br />
                    </td>
                    <td class="header-logoDRDO" rowspan="1" onclick="window.location='/default.aspx';"
                        style="cursor: pointer;">
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div align="center" class="body">
        <div class="body-content">
            <br />
            <table border="0" cellpadding="0" cellspacing="0" width="100%" id="tbl_Header_Nav_Anonymous">
                <tr>
                    <td align="left" style="line-height: 25px;">
                        <!-- Navigation -->
                        
                                <table border="0" cellpadding="0" cellspacing="0" width="100%" id="tbl_Header_Small">
                                    <tr>
                                        <td class="header-info">
                                            <span style="font-size: 1.0em; line-height: 15px;"><strong>
                                                <span id="ctl00_LoginView1_Lbl_vc_CandidateFullName">MR. NILESH SAMBHAJI KUMBHAR</span></strong>
                                                [<span id="ctl00_LoginView1_Lbl_vc_Email">nlshkumbhar@gmail.com</span>]
                                                [<span id="ctl00_LoginView1_Lbl_vc_MobileNumber">7758020419</span>]
                                            </span>
                                        </td>
                                        <td class="header-info" rowspan="2" style="text-align: right; width: 100px; border-left: dotted #e3e3e3 1px;
                                            display: visible;">
                                            <span style="font-size: 0.9em; line-height: 20px; display: none; padding-right: 10px;">
                                                <a id="ctl00_LoginView1_LoginStatus2" href="javascript:__doPostBack(&#39;ctl00$LoginView1$LoginStatus2$ctl00&#39;,&#39;&#39;)" style="display: inline-block;">Logout</a>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                                <!-- Navigation -->
                                <div class="header-nav" id="navigationbar">
                                    <ul class="header-menu-nav">
                                        <li><a href="ApplicantHome.aspx">Home</a></li>
                                        <li><a href="./ApplicationFormStep1.aspx" class="headermenuitem">
                                            <b>Online Application</b></a></li>
                                        <li><a href="./ApplicationFormList.aspx" class="headermenuitem">Saved Applications</a></li>
                                        <li><a href="../downloads/Instructions_for_Online.pdf" target="_blank"
                                            class="headermenuitem">
                                            <!--<img src="../images/download.png" alt="" />-->
                                            Instructions</a></li>
                                        <li><a href="../faq.aspx" target="_blank" class="headermenuitem">
                                            <!--<img src="../images/question.png" alt="" />-->
                                            FAQs</a></li>
                                        <li><a href="./ApplicantChangePassword.aspx" class="headermenuitem">Change Password</a></li>
                                        <!--<li><a href="#" class="headermenuitem">My Profile
                                            <img src="../Images/ddarrow.png" alt="" /></a>
                                            <ul class="subnav">
                                                <li><a href="./ApplicantPersonalDetails.aspx" class="headermenuitem">Update Profile</a></li>
                                                <li><a href="./ApplicantChangePassword.aspx" class="headermenuitem">Change Password</a></li>
                                            </ul>
                                        </li>-->
                                        <li>
                                            <a id="ctl00_LoginView1_LoginStatus1" href="javascript:__doPostBack(&#39;ctl00$LoginView1$LoginStatus1$ctl00&#39;,&#39;&#39;)">Logout</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Navigation -->
                            
                    </td>
                </tr>
            </table>
            
            
            
    <div class="content width-full">
        <span class="closepanel confirmbeforeclose"></span>
        <div class="content-heading">
            &nbsp;APPLICATION FORM
        </div>
        <div class="content-details">
            <table id="ctl00_cph_FixedWidth_tbl_ApplicationForm_Step1" cellpadding="5" cellspacing="5" border="0" width="100%" style="font-size: 0.8em;">
	<tr>
		<td colspan="7">
                        <div class="StepHolder">
                            <span class="stepcurrent"><span class="StepHolder StepNumber">1</span> <span class="StepHolder StepCaption">
                                Personal Details</span> </span>&nbsp;&nbsp; <span class="stepnext"><span class="StepHolder StepNumber">
                                    2</span> <span class="StepHolder StepCaption">Examination/EQR/Other Details</span>
                                </span>&nbsp;&nbsp; <span class="stepnext"><span class="StepHolder StepNumber">3</span>
                                    <span class="StepHolder StepCaption">Upload Documents</span></span>&nbsp;&nbsp;
                            <span class="stepnext"><span class="StepHolder StepNumber">4</span> <span class="StepHolder StepCaption">
                                Review/Finalize</span></span>&nbsp;<span class="stepnext"><span class="StepHolder StepNumber">
                                    5</span> <span class="StepHolder StepCaption">Fee Payment (If applicable)</span></span>
                        </div>
                    </td>
	</tr>
	<tr>
		<td colspan="7">
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td align="center" colspan="7">
                        <span class="EntryFieldInfo">Fields marked with star (*) are mandatory. Paste {CTRL}+V
                            is not allowed.</span>
                    </td>
	</tr>
	<tr>
		<td colspan="7" class="RowHeaderforSection">
                        <strong>Personal Details (व्यक्तिगत विवरण)</strong>
                        <span id="ctl00_cph_FixedWidth_lbl_PK_RegFM" style="display: none;">b5411a00-7dbe-e511-b034-001e6768737f</span>
                        <span id="ctl00_cph_FixedWidth_lbl_PK_AppFM" style="display: none;">00000000-0000-0000-0000-000000000000</span>
                        <span id="ctl00_cph_FixedWidth_lblPersonalDetails" class="asp_Label" style="display: none;"></span>
                    </td>
	</tr>
	<tr>
		<td>
                    </td>
		<td>
                    </td>
		<td>
                        &nbsp;
                    </td>
		<td align="center">
                        <span class="EntryFieldInfo">Initial</span>
                    </td>
		<td align="center">
                        <span class="EntryFieldInfo">First Name *</span>
                    </td>
		<td align="center">
                        <span class="EntryFieldInfo">Middle Name</span>
                    </td>
		<td align="center">
                        <span class="EntryFieldInfo">Last Name</span>
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Candidate&#39;s Name<br />
                        (अभ्यर्थी का नाम)
                    </td>
		<td>
                        :*
                    </td>
		<td width="24px">
                        <span id="ctl00_cph_FixedWidth_spanentry_CandidateName" class="">&nbsp;</span>
                    </td>
		<td align="left">
                        <select name="ctl00$cph_FixedWidth$ddl_vc_CandidateInitial" id="ctl00_cph_FixedWidth_ddl_vc_CandidateInitial" class="input-text" style="height:25px;width:55px;">
			<option selected="selected" value="MR.">MR.</option>
			<option value="MRS.">MRS.</option>
			<option value="MS.">MS.</option>

		</select>
                    </td>
		<td align="left">
                        <input name="ctl00$cph_FixedWidth$txt_vc_CandidateFirstName" type="text" value="NILESH" id="ctl00_cph_FixedWidth_txt_vc_CandidateFirstName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" onblur="ValidateCandidateName();" style="width:200px;text-transform: uppercase;" />
                    </td>
		<td align="left">
                        <input name="ctl00$cph_FixedWidth$txt_vc_CandidateMiddleName" type="text" value="SAMBHAJI" id="ctl00_cph_FixedWidth_txt_vc_CandidateMiddleName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" style="width:150px;text-transform: uppercase;" />
                    </td>
		<td align="left">
                        <input name="ctl00$cph_FixedWidth$txt_vc_CandidateLastName" type="text" value="KUMBHAR" id="ctl00_cph_FixedWidth_txt_vc_CandidateLastName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td colspan="4">
                    </td>
		<td colspan="3">
                        <span class="EntryFieldInfo">&nbsp;</span>
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Father&#39;s Name<br />
                        (पिता का नाम)
                    </td>
		<td>
                        :*
                    </td>
		<td>
                        <span id="ctl00_cph_FixedWidth_spanentry_FatherName" class="">&nbsp;</span>
                    </td>
		<td align="left">
                        <select name="ctl00$cph_FixedWidth$ddl_vc_FatherInitial" id="ctl00_cph_FixedWidth_ddl_vc_FatherInitial" class="input-text" style="height:25px;width:55px;">
			<option value="MR.">MR.</option>
			<option value="Late.">Late.</option>

		</select>
                    </td>
		<td align="left">
                        <input name="ctl00$cph_FixedWidth$txt_vc_FatherFirstName" type="text" id="ctl00_cph_FixedWidth_txt_vc_FatherFirstName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" onblur="ValidateFatherName();" style="width:200px;text-transform: uppercase;" />
                    </td>
		<td align="left">
                        <input name="ctl00$cph_FixedWidth$txt_vc_FatherMiddleName" type="text" id="ctl00_cph_FixedWidth_txt_vc_FatherMiddleName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" style="width:150px;text-transform: uppercase;" />
                    </td>
		<td align="left">
                        <input name="ctl00$cph_FixedWidth$txt_vc_FatherLastName" type="text" id="ctl00_cph_FixedWidth_txt_vc_FatherLastName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td colspan="4">
                    </td>
		<td colspan="3">
                        <span class="EntryFieldInfo">&nbsp;</span>
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Mother&#39;s Name<br />
                        (माता का नाम)
                    </td>
		<td>
                        :*
                    </td>
		<td>
                        <span id="ctl00_cph_FixedWidth_spanentry_MotherName" class="">&nbsp;</span>
                    </td>
		<td align="left">
                        <select name="ctl00$cph_FixedWidth$ddl_vc_MotherInitial" id="ctl00_cph_FixedWidth_ddl_vc_MotherInitial" CLASS="INPUT-TEXT" style="height:25px;width:55px;">
			<option value="MRS.">MRS.</option>
			<option value="Late.">Late.</option>

		</select>
                    </td>
		<td align="left">
                        <input name="ctl00$cph_FixedWidth$txt_vc_MotherFirstName" type="text" id="ctl00_cph_FixedWidth_txt_vc_MotherFirstName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" onblur="ValidateMotherName();" style="width:200px;text-transform: uppercase;" />
                    </td>
		<td align="left">
                        <input name="ctl00$cph_FixedWidth$txt_vc_MotherMiddleName" type="text" id="ctl00_cph_FixedWidth_txt_vc_MotherMiddleName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" style="width:150px;text-transform: uppercase;" />
                    </td>
		<td align="left">
                        <input name="ctl00$cph_FixedWidth$txt_vc_MotherLastName" type="text" id="ctl00_cph_FixedWidth_txt_vc_MotherLastName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td colspan="4">
                    </td>
		<td colspan="3">
                        <span class="EntryFieldInfo">&nbsp;</span>
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Date of Birth<br />
                        (जन्मतिथि)
                    </td>
		<td>
                        :*
                    </td>
		<td>
                        <span id="ctl00_cph_FixedWidth_spanentry_DateOfBirth" class="">&nbsp;</span>
                    </td>
		<td align="left" colspan="4">
                        <select name="ctl00$cph_FixedWidth$SelectDateOfBirthDay" id="ctl00_cph_FixedWidth_SelectDateOfBirthDay" class="input-text" onblur="ValidateDateOfBirth();" style="font-size:15px;height:25px;width:70px;">
			<option value="0">Day</option>
			<option value="01">01</option>
			<option value="02">02</option>
			<option value="03">03</option>
			<option value="04">04</option>
			<option value="05">05</option>
			<option value="06">06</option>
			<option value="07">07</option>
			<option value="08">08</option>
			<option value="09">09</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option selected="selected" value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>

		</select>
                        <select name="ctl00$cph_FixedWidth$SelectDateOfBirthMonth" id="ctl00_cph_FixedWidth_SelectDateOfBirthMonth" class="input-text" onblur="ValidateDateOfBirth();" style="font-size:15px;height:25px;width:75px;">
			<option value="0">Month</option>
			<option value="01">Jan</option>
			<option value="02">Feb</option>
			<option value="03">March</option>
			<option value="04">April</option>
			<option value="05">May</option>
			<option value="06">June</option>
			<option selected="selected" value="07">July</option>
			<option value="08">Aug</option>
			<option value="09">Sep</option>
			<option value="10">Oct</option>
			<option value="11">Nov</option>
			<option value="12">Dec</option>

		</select>
                        <select name="ctl00$cph_FixedWidth$SelectDateOfBirthYear" id="ctl00_cph_FixedWidth_SelectDateOfBirthYear" class="input-text" onblur="ValidateDateOfBirth();" style="font-size:15px;height:25px;width:75px;">
			<option value="0">Year</option>
			<option value="1956">1956</option>
			<option value="1957">1957</option>
			<option value="1958">1958</option>
			<option value="1959">1959</option>
			<option value="1960">1960</option>
			<option value="1961">1961</option>
			<option value="1962">1962</option>
			<option value="1963">1963</option>
			<option value="1964">1964</option>
			<option value="1965">1965</option>
			<option value="1966">1966</option>
			<option value="1967">1967</option>
			<option value="1968">1968</option>
			<option value="1969">1969</option>
			<option value="1970">1970</option>
			<option value="1971">1971</option>
			<option value="1972">1972</option>
			<option value="1973">1973</option>
			<option value="1974">1974</option>
			<option value="1975">1975</option>
			<option value="1976">1976</option>
			<option value="1977">1977</option>
			<option value="1978">1978</option>
			<option value="1979">1979</option>
			<option value="1980">1980</option>
			<option value="1981">1981</option>
			<option value="1982">1982</option>
			<option value="1983">1983</option>
			<option value="1984">1984</option>
			<option value="1985">1985</option>
			<option value="1986">1986</option>
			<option value="1987">1987</option>
			<option value="1988">1988</option>
			<option value="1989">1989</option>
			<option value="1990">1990</option>
			<option value="1991">1991</option>
			<option value="1992">1992</option>
			<option selected="selected" value="1993">1993</option>
			<option value="1994">1994</option>
			<option value="1995">1995</option>
			<option value="1996">1996</option>
			<option value="1997">1997</option>
			<option value="1998">1998</option>

		</select>
                        &nbsp; <span id="ctl00_cph_FixedWidth_Span_CandidateAge" class="EntryFieldInfo"></span>
                        Age as on cut off date [
                        <span id="ctl00_cph_FixedWidth_lbl_vc_AgeAsOnCutOffDate">21 years 3 Months and 3 Days.</span>
                        ]
                    </td>
	</tr>
	<tr>
		<td colspan="4">
                    </td>
		<td colspan="3">
                        <span class="EntryFieldInfo">(If you edit then changes will be shown after saving the data)</span></td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Gender<br />
                        (लिंग)
                    </td>
		<td>
                        :*
                    </td>
		<td>
                        <span id="ctl00_cph_FixedWidth_spanentry_Gender" class="">&nbsp;</span>
                    </td>
		<td colspan="4">
                        <select name="ctl00$cph_FixedWidth$ddl_Gender" id="ctl00_cph_FixedWidth_ddl_Gender" class="input-text" onblur="ValidateGender();" style="font-size:15px;height:25px;width:200px;">
			<option value="0">Select Gender</option>
			<option selected="selected" value="M">Male</option>
			<option value="F">Female</option>

		</select>
                    </td>
	</tr>
	<tr>
		<td colspan="4">
                    </td>
		<td colspan="3">
                        <span class="EntryFieldInfo">&nbsp;</span>
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Nationality<br />
                        (नागरिकता)
                    </td>
		<td>
                        :*
                    </td>
		<td>
                        <span id="ctl00_cph_FixedWidth_spanentry_Nationality" class="">&nbsp;</span>
                    </td>
		<td colspan="4">
                        <select name="ctl00$cph_FixedWidth$ddl_Nationality" id="ctl00_cph_FixedWidth_ddl_Nationality" class="input-text" onblur="ValidateNationality();" style="font-size:15px;height:25px;width:200px;">
			<option value="0">Select Nationality</option>
			<option value="I">Indian</option>
			<option value="O">Others</option>

		</select>
                        &nbsp; <span id="Span_OtherNationality" class="hidden" style="overflow: hidden; font-size=0.8em;">
                            <b>Specify :</b>
                            <input name="ctl00$cph_FixedWidth$txt_vc_NationalityOther" type="text" id="ctl00_cph_FixedWidth_txt_vc_NationalityOther" class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" onblur="ValidateMotherName();" style="width:250px;text-transform: uppercase;" />
                        </span>
                    </td>
	</tr>
	<tr>
		<td colspan="4">
                    </td>
		<td colspan="3">
                        <span class="EntryFieldInfo">&nbsp;</span>
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Mobile No.<br />
                        (मोबाइल नंबर)
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                        <span id="ctl00_cph_FixedWidth_spanentry_MobileNumber" class="">&nbsp;</span>
                    </td>
		<td colspan="4">
                        +91-<input name="ctl00$cph_FixedWidth$txt_vc_MobileNumber" type="text" value="7758020419" maxlength="10" id="ctl00_cph_FixedWidth_txt_vc_MobileNumber" class="input-text" onkeypress="return isNumberKey(event)" autocorrect="off" onpaste="return false" onblur="ValidateMobileNumber();" style="width:200px;text-transform: uppercase;" />
                        &nbsp; <span class="EntryFieldInfo">(10 Digit Mobile Number without Zero '0')</span>
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        E-mail ID<br />
                        (ईमेल आई. डी.)
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                        <span id="ctl00_cph_FixedWidth_spanentry_EMail" class="">&nbsp;</span>
                    </td>
		<td colspan="4">
                        <span id="ctl00_cph_FixedWidth_txt_vc_Email">nlshkumbhar@gmail.com</span>
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td align="left" colspan="7">
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Category<br />
                        (वर्ग)
                    </td>
		<td>
                        :*
                    </td>
		<td>
                        <span id="ctl00_cph_FixedWidth_spanentry_Categroy" class="">&nbsp;</span>
                    </td>
		<td colspan="2">
                        <input id="ctl00_cph_FixedWidth_rbt_vc_Category_UR" type="radio" name="ctl00$cph_FixedWidth$category" value="rbt_vc_Category_UR" /><label for="ctl00_cph_FixedWidth_rbt_vc_Category_UR"> Unreserved (UR)</label>
                    </td>
		<td colspan="2">
                        <input id="ctl00_cph_FixedWidth_rbt_vc_Category_SC" type="radio" name="ctl00$cph_FixedWidth$category" value="rbt_vc_Category_SC" /><label for="ctl00_cph_FixedWidth_rbt_vc_Category_SC"> Scheduled Caste (SC)</label>
                    </td>
	</tr>
	<tr>
		<td>
                        &nbsp;
                    </td>
		<td>
                        &nbsp;
                    </td>
		<td>
                    </td>
		<td colspan="2">
                        <input id="ctl00_cph_FixedWidth_rbt_vc_Category_ST" type="radio" name="ctl00$cph_FixedWidth$category" value="rbt_vc_Category_ST" /><label for="ctl00_cph_FixedWidth_rbt_vc_Category_ST"> Scheduled Tribe (ST)</label>
                    </td>
		<td colspan="2">
                        <input id="ctl00_cph_FixedWidth_rbt_vc_Category_OBC" type="radio" name="ctl00$cph_FixedWidth$category" value="rbt_vc_Category_OBC" /><label for="ctl00_cph_FixedWidth_rbt_vc_Category_OBC"> Other Backward Class (OBC)</label>
                        &nbsp; <span class="EntryFieldInfo"></span>
                    </td>
	</tr>
	<tr>
		<td colspan="7">
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Sub-Category<br />
                        (उपवर्ग)
                    </td>
		<td>
                        :
                    </td>
		<td>
                        <span id="ctl00_cph_FixedWidth_spanentry_SubCategroy" class="">&nbsp;</span>
                    </td>
		<td colspan="2">
                        <input id="ctl00_cph_FixedWidth_chk_bt_SubCategory_MSP" type="checkbox" name="ctl00$cph_FixedWidth$chk_bt_SubCategory_MSP" /><label for="ctl00_cph_FixedWidth_chk_bt_SubCategory_MSP"> Meritorious Sports Person (MSP)</label>
                    </td>
		<td colspan="2">
                        <input id="ctl00_cph_FixedWidth_chk_bt_SubCategory_GS" type="checkbox" name="ctl00$cph_FixedWidth$chk_bt_SubCategory_GS" /><label for="ctl00_cph_FixedWidth_chk_bt_SubCategory_GS"> Govt. Servant (GS)</label>
                    </td>
	</tr>
	<tr>
		<td>
                        &nbsp;
                    </td>
		<td>
                        &nbsp;
                    </td>
		<td>
                    </td>
		<td colspan="2">
                        <span onchange="Configure_PWD();"><input id="ctl00_cph_FixedWidth_chk_bt_SubCategory_PWD" type="checkbox" name="ctl00$cph_FixedWidth$chk_bt_SubCategory_PWD" /><label for="ctl00_cph_FixedWidth_chk_bt_SubCategory_PWD"> Person with Disability (PWD)</label></span>
                    </td>
		<td colspan="2">
                        <input id="ctl00_cph_FixedWidth_chk_bt_SubCategory_WD" type="checkbox" name="ctl00$cph_FixedWidth$chk_bt_SubCategory_WD" /><label for="ctl00_cph_FixedWidth_chk_bt_SubCategory_WD"> Widow/Divorcee</label>
                    </td>
	</tr>
	<tr>
		<td>
                        &nbsp;
                    </td>
		<td>
                        &nbsp;
                    </td>
		<td>
                    </td>
		<td>
                    </td>
		<td colspan="3">
                        <table id="tbl_PWD_Option" cellspacing="0" cellpadding="1" width="98%" border="0"
                            class="hidden">
                            <tr>
                                <td class="EntryFieldInfo">
                                    Select Disability Type
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input id="ctl00_cph_FixedWidth_chk_bt_SubCategory_OH" type="checkbox" name="ctl00$cph_FixedWidth$chk_bt_SubCategory_OH" /><label for="ctl00_cph_FixedWidth_chk_bt_SubCategory_OH"> Orthopaedically Handicapped (OH)</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input id="ctl00_cph_FixedWidth_chk_bt_SubCategory_HI" type="checkbox" name="ctl00$cph_FixedWidth$chk_bt_SubCategory_HI" /><label for="ctl00_cph_FixedWidth_chk_bt_SubCategory_HI"> Hearing Impaired (HI)</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span onchange="Configure_VI();"><input id="ctl00_cph_FixedWidth_chk_bt_SubCategory_VI" type="checkbox" name="ctl00$cph_FixedWidth$chk_bt_SubCategory_VI" /><label for="ctl00_cph_FixedWidth_chk_bt_SubCategory_VI"> Visually Impaired (VI)</label></span>
                                    <br />
                                    <span id="tbl_VI_Details" class="hidden">&nbsp; Specific requirements by Visually Impaired
                                        (VI) candidates, if any :<br />
                                        &nbsp;
                                        <input name="ctl00$cph_FixedWidth$txt_vc_RequirementFor_VI" type="text" id="ctl00_cph_FixedWidth_txt_vc_RequirementFor_VI" class="input-text" style="width:350px;text-transform: uppercase;" />
                                    </span>
                                </td>
                            </tr>
                        </table>
                    </td>
	</tr>
	<tr>
		<td>
                        &nbsp;
                    </td>
		<td>
                        &nbsp;
                    </td>
		<td>
                    </td>
		<td colspan="2">
                        <span onchange="Configure_ESM();"><input id="ctl00_cph_FixedWidth_chk_bt_SubCategory_ESM" type="checkbox" name="ctl00$cph_FixedWidth$chk_bt_SubCategory_ESM" /><label for="ctl00_cph_FixedWidth_chk_bt_SubCategory_ESM"> Ex-Service Man (ESM)</label></span>
                    </td>
		<td colspan="2">
                        <table id="tbl_ESM_Option" cellspacing="0" cellpadding="1" width="98%" border="0"
                            class="hidden">
                            <tr>
                                <td>
                                    Are you Serving?
                                    <span onchange="Configure_ESM_YesNo();"><input id="ctl00_cph_FixedWidth_rbt_vc_ESM_Yes" type="radio" name="ctl00$cph_FixedWidth$ESM" value="rbt_vc_ESM_Yes" /><label for="ctl00_cph_FixedWidth_rbt_vc_ESM_Yes"> Yes</label></span>
                                    <span onchange="Configure_ESM_YesNo();"><input id="ctl00_cph_FixedWidth_rbt_vc_ESM_No" type="radio" name="ctl00$cph_FixedWidth$ESM" value="rbt_vc_ESM_No" checked="checked" /><label for="ctl00_cph_FixedWidth_rbt_vc_ESM_No"> No</label></span>
                                </td>
                            </tr>
                        </table>
                    </td>
	</tr>
	<tr>
		<td colspan="7">
                        <table id="tbl_ESM_option_yes" cellspacing="0" cellpadding="1" width="98%" border="0"
                            class="hidden">
                            <tr>
                                <td class="fieldInfo" colspan="7">
                                    For serving defence personnel only, claiming benefit of <b>Ex-Serviceman</b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="7">
                                    <table border="0" cellpadding="0" cellspacing="1" width="98%">
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td class="fieldInfo" align="center" style="border: 1px dotted #e3e3e3">
                                                Name of Unit
                                            </td>
                                            <td class="fieldInfo" align="center" style="border: 1px dotted #e3e3e3">
                                                Rank
                                            </td>
                                            <td class="fieldInfo" align="center" style="border: 1px dotted #e3e3e3">
                                                Date Of<br />
                                                Joining<br />
                                                (dd/mm/yyyy)
                                            </td>
                                            <td class="fieldInfo" align="center" style="border: 1px dotted #e3e3e3">
                                                Date Of Discharge<br />
                                                (dd/mm/yyyy)
                                            </td>
                                            <td class="fieldInfo" align="center" style="border: 1px dotted #e3e3e3">
                                                CO Name
                                            </td>
                                            <td class="fieldInfo" align="center" style="border: 1px dotted #e3e3e3">
                                                CO Contact Number
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span id="ctl00_cph_FixedWidth_spanentry_ESM" class="">&nbsp;</span>
                                            </td>
                                            <td align="center">
                                                <input name="ctl00$cph_FixedWidth$txt_vc_ESM_NameOfUnit" type="text" id="ctl00_cph_FixedWidth_txt_vc_ESM_NameOfUnit" class="input-text" style="width:175px;text-transform: uppercase;" />
                                            </td>
                                            <td align="center">
                                                <input name="ctl00$cph_FixedWidth$txt_vc_ESM_Rank" type="text" id="ctl00_cph_FixedWidth_txt_vc_ESM_Rank" class="input-text" style="width:125px;text-transform: uppercase;" />
                                            </td>
                                            <td align="center">
                                                <input name="ctl00$cph_FixedWidth$txt_vc_ESM_DOJ" type="text" maxlength="10" id="ctl00_cph_FixedWidth_txt_vc_ESM_DOJ" onkeypress="return isDateKey(event)" class="input-text" style="width:100px;text-transform: uppercase;" />
                                            </td>
                                            <td align="center">
                                                <input name="ctl00$cph_FixedWidth$txt_vc_ESM_DOD" type="text" maxlength="10" id="ctl00_cph_FixedWidth_txt_vc_ESM_DOD" onkeypress="return isDateKey(event)" class="input-text" style="width:100px;text-transform: uppercase;" />
                                            </td>
                                            <td align="center">
                                                <input name="ctl00$cph_FixedWidth$txt_vc_ESM_CO_Name" type="text" id="ctl00_cph_FixedWidth_txt_vc_ESM_CO_Name" class="input-text" style="width:200px;text-transform: uppercase;" />
                                            </td>
                                            <td align="center">
                                                <input name="ctl00$cph_FixedWidth$txt_vc_ESM_CO_ContactNumber" type="text" id="ctl00_cph_FixedWidth_txt_vc_ESM_CO_ContactNumber" onkeypress="return isNumberKey(event)" class="input-text" style="width:125px;text-transform: uppercase;" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
	</tr>
	<tr>
		<td colspan="7">
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td>
                        &nbsp;
                    </td>
		<td>
                        &nbsp;
                    </td>
		<td>
                    </td>
		<td colspan="2">
                        <span class="EntryFieldInfo">ID Type</span>
                    </td>
		<td colspan="2">
                        <span class="EntryFieldInfo">ID Number</span>
                    </td>
		<td>
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Identity Proof<br />
                        (पहचान पत्र)
                    </td>
		<td>
                        :*
                    </td>
		<td>
                        <span id="ctl00_cph_FixedWidth_spanentry_IdentityProof" class="">&nbsp;</span>
                    </td>
		<td colspan="2">
                        <select name="ctl00$cph_FixedWidth$ddl_vc_TypeOfIdentityProof" id="ctl00_cph_FixedWidth_ddl_vc_TypeOfIdentityProof" class="input-text" style="height:25px;width:225px;">
			<option value="">Select ID</option>
			<option value="AADHAR CARD">AADHAR CARD (Prefered)</option>
			<option value="PASSPORT">PASSPORT</option>
			<option value="PAN CARD">PAN CARD</option>
			<option value="VOTER ID CARD">VOTER ID CARD</option>
			<option value="GOVERNMENT ID CARD">GOVERNMENT ID CARD</option>
			<option value="DRIVING LICENSE">DRIVING LICENSE</option>
			<option value="COLLEGE ID CARD">COLLEGE ID CARD</option>

		</select>
                    </td>
		<td colspan="2">
                        <input name="ctl00$cph_FixedWidth$txt_vc_IdentityProofNumber" type="text" id="ctl00_cph_FixedWidth_txt_vc_IdentityProofNumber" onkeypress="return isAlphaNumericKey(event)" class="input-text" onblur="ValidateIdentityProof();" style="width:175px;text-transform: uppercase;" />
                    </td>
		<td>
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td>
                        &nbsp;
                    </td>
		<td>
                        &nbsp;
                    </td>
		<td>
                    </td>
		<td colspan="2">
                        <span class="EntryFieldInfo">Height In (cms) </span>
                    </td>
		<td colspan="2">
                        <span class="EntryFieldInfo">Weight In (Kgs) </span>
                    </td>
		<td>
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Physical Measurement<br />
                        (शारीरिक माप)
                    </td>
		<td>
                        :*
                    </td>
		<td>
                        <span id="ctl00_cph_FixedWidth_spanentry_PhysicalCharacteristics" class="">&nbsp;</span>
                    </td>
		<td colspan="2">
                        <input name="ctl00$cph_FixedWidth$txt_vc_HeightInCentimeter" type="text" maxlength="3" id="ctl00_cph_FixedWidth_txt_vc_HeightInCentimeter" class="input-text" onkeypress="return isNumberKey(event)" onpaste="return false" onblur="ValidatePhysicalCharacteristics();" style="width:175px;text-transform: uppercase;" />
                        <span class="EntryFieldInfo" id="spanHeightInFeet"></span>
                    </td>
		<td colspan="2">
                        <input name="ctl00$cph_FixedWidth$txt_vc_WeightInKilogram" type="text" maxlength="3" id="ctl00_cph_FixedWidth_txt_vc_WeightInKilogram" class="input-text" onkeypress="return isNumberKey(event)" onpaste="return false" onblur="ValidatePhysicalCharacteristics();" style="width:175px;text-transform: uppercase;" />
                    </td>
		<td>
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo">
                        Identification Mark<br />
                        (पहचान चिन्ह)
                    </td>
		<td>
                        :*
                    </td>
		<td>
                        <span id="ctl00_cph_FixedWidth_spanentry_IdentificationMark" class="">&nbsp;</span>
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_IdentificationMark" type="text" id="ctl00_cph_FixedWidth_txt_vc_IdentificationMark" onkeypress="return isCharacterKey(event)" class="input-text" onpaste="return false" onblur="ValidateIdentificationMark();" style="width:375px;text-transform: uppercase;" />
                    </td>
		<td>
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td align="left" colspan="7">
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td colspan="7" class="RowHeaderforSection">
                        <strong>Correspondence Address Details (All particulars given below should be active
                            till the end of selection process)
                            <br />
                            &nbsp; पत्राचार का पता (नीचे दिए गए सभी ब्योरे चयन प्रक्रिया के अंत तक सक्रिय रहने
                            चाहिए)</strong>
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        c/o
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                        <span id="ctl00_cph_FixedWidth_spanentry_CorrespondenceAddress" class="">&nbsp;</span>
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_CorrespondenceName" type="text" maxlength="50" id="ctl00_cph_FixedWidth_txt_vc_CorrespondenceName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Address Line 1
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_CorrespondenceAddress1" type="text" maxlength="50" id="ctl00_cph_FixedWidth_txt_vc_CorrespondenceAddress1" Class="input-text" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Address Line 2
                    </td>
		<td align="left">
                        :
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_CorrespondenceAddress2" type="text" maxlength="50" id="ctl00_cph_FixedWidth_txt_vc_CorrespondenceAddress2" Class="input-text" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Address Line 3
                    </td>
		<td align="left">
                        :
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_CorrespondenceAddress3" type="text" maxlength="50" id="ctl00_cph_FixedWidth_txt_vc_CorrespondenceAddress3" Class="input-text" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        City
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_CorrespondenceCity" type="text" maxlength="50" id="ctl00_cph_FixedWidth_txt_vc_CorrespondenceCity" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        State
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <select name="ctl00$cph_FixedWidth$ddl_vc_CorrespondenceState" id="ctl00_cph_FixedWidth_ddl_vc_CorrespondenceState" class="input-text" style="font-size:15px;height:25px;width:200px;">
			<option selected="selected" value="">SELECT STATE</option>
			<option value="ANDAMAN AND NICOBAR">ANDAMAN AND NICOBAR</option>
			<option value="ANDHRA PRADESH">ANDHRA PRADESH</option>
			<option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
			<option value="ASSAM">ASSAM</option>
			<option value="BIHAR">BIHAR</option>
			<option value="CHANDIGARH">CHANDIGARH</option>
			<option value="CHHATTISGARH">CHHATTISGARH</option>
			<option value="DADRA AND NAGAR HAVELI">DADRA AND NAGAR HAVELI</option>
			<option value="DAMAN AND DIU">DAMAN AND DIU</option>
			<option value="DELHI (NCR)">DELHI (NCR)</option>
			<option value="GOA">GOA</option>
			<option value="GUJARAT">GUJARAT</option>
			<option value="HARYANA">HARYANA</option>
			<option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
			<option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
			<option value="JHARKHAND">JHARKHAND</option>
			<option value="KARNATAKA">KARNATAKA</option>
			<option value="KERALA">KERALA</option>
			<option value="LAKSHADWEEP">LAKSHADWEEP</option>
			<option value="MADHYA PRADESH">MADHYA PRADESH</option>
			<option value="MAHARASHTRA">MAHARASHTRA</option>
			<option value="MANIPUR">MANIPUR</option>
			<option value="MEGHALAYA">MEGHALAYA</option>
			<option value="MIZORAM">MIZORAM</option>
			<option value="NAGALAND">NAGALAND</option>
			<option value="ODISHA">ODISHA</option>
			<option value="PUDUCHERRY">PUDUCHERRY</option>
			<option value="PUNJAB">PUNJAB</option>
			<option value="RAJASTHAN">RAJASTHAN</option>
			<option value="SIKKIM">SIKKIM</option>
			<option value="TAMIL NADU">TAMIL NADU</option>
			<option value="TELANGANA">TELANGANA</option>
			<option value="TRIPURA">TRIPURA</option>
			<option value="UTTARAKHAND">UTTARAKHAND</option>
			<option value="UTTAR PRADESH">UTTAR PRADESH</option>
			<option value="WEST BENGAL">WEST BENGAL</option>

		</select>
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Pin code
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_CorrespondencePinCode" type="text" maxlength="6" id="ctl00_cph_FixedWidth_txt_vc_CorrespondencePinCode" Class="input-text" onkeypress="return isNumberKey(event)" onpaste="return false" style="width:100px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Landline No.
                    </td>
		<td align="left">
                        :
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_CorrespondenceLandlineNumber" type="text" maxlength="15" id="ctl00_cph_FixedWidth_txt_vc_CorrespondenceLandlineNumber" Class="input-text" onkeypress="return isNumberKey(event)" onpaste="return false" style="width:200px;text-transform: uppercase;" />&nbsp; <span class="EntryFieldInfo">
                                (Landline No with STD Code ex. 01123882323)</span>
                    </td>
	</tr>
	<tr>
		<td colspan="7" align="left">
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td colspan="7" class="RowHeaderforSection">
                        <strong>Permanent Address Details (स्थायी पता)</strong>
                    </td>
	</tr>
	<tr>
		<td align="left">
                    </td>
		<td align="left">
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <a id="CopyAddress" href="#CopyAddress" onclick="CopyAddress();">Click Here</a>
                        if Permanent Address Same as above.
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        c/o
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                        <span id="ctl00_cph_FixedWidth_spanentry_PermanentAddress" class="">&nbsp;</span>
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_PermanentName" type="text" maxlength="50" id="ctl00_cph_FixedWidth_txt_vc_PermanentName" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Address Line 1
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_PermanentAddress1" type="text" maxlength="50" id="ctl00_cph_FixedWidth_txt_vc_PermanentAddress1" Class="input-text" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Address Line 2
                    </td>
		<td align="left">
                        :
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_PermanentAddress2" type="text" maxlength="50" id="ctl00_cph_FixedWidth_txt_vc_PermanentAddress2" Class="input-text" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Address Line 3
                    </td>
		<td align="left">
                        :
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_PermanentAddress3" type="text" maxlength="50" id="ctl00_cph_FixedWidth_txt_vc_PermanentAddress3" Class="input-text" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        City
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_PermanentCity" type="text" maxlength="50" id="ctl00_cph_FixedWidth_txt_vc_PermanentCity" Class="input-text" onkeypress="return isCharacterKey(event)" onpaste="return false" style="width:200px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        State
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <select name="ctl00$cph_FixedWidth$ddl_vc_PermanentState" id="ctl00_cph_FixedWidth_ddl_vc_PermanentState" class="input-text" style="font-size:15px;height:25px;width:200px;">
			<option selected="selected" value="">SELECT STATE</option>
			<option value="ANDAMAN AND NICOBAR">ANDAMAN AND NICOBAR </option>
			<option value="ANDHRA PRADESH">ANDHRA PRADESH</option>
			<option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
			<option value="ASSAM">ASSAM</option>
			<option value="BIHAR">BIHAR</option>
			<option value="CHANDIGARH">CHANDIGARH</option>
			<option value="CHHATTISGARH">CHHATTISGARH</option>
			<option value="DADRA AND NAGAR HAVELI">DADRA AND NAGAR HAVELI</option>
			<option value="DAMAN AND DIU">DAMAN AND DIU</option>
			<option value="DELHI (NCR)">DELHI (NCR)</option>
			<option value="GOA">GOA</option>
			<option value="GUJARAT">GUJARAT</option>
			<option value="HARYANA">HARYANA</option>
			<option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
			<option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
			<option value="JHARKHAND">JHARKHAND</option>
			<option value="KARNATAKA">KARNATAKA</option>
			<option value="KERALA">KERALA</option>
			<option value="LAKSHADWEEP">LAKSHADWEEP</option>
			<option value="MADHYA PRADESH">MADHYA PRADESH</option>
			<option value="MAHARASHTRA">MAHARASHTRA</option>
			<option value="MANIPUR">MANIPUR</option>
			<option value="MEGHALAYA">MEGHALAYA</option>
			<option value="MIZORAM">MIZORAM</option>
			<option value="NAGALAND">NAGALAND</option>
			<option value="ODISHA">ODISHA</option>
			<option value="PUDUCHERRY">PUDUCHERRY</option>
			<option value="PUNJAB">PUNJAB</option>
			<option value="RAJASTHAN">RAJASTHAN</option>
			<option value="SIKKIM">SIKKIM</option>
			<option value="TAMIL NADU">TAMIL NADU</option>
			<option value="TELANGANA">TELANGANA</option>
			<option value="TRIPURA">TRIPURA</option>
			<option value="UTTARAKHAND">UTTARAKHAND</option>
			<option value="UTTAR PRADESH">UTTAR PRADESH</option>
			<option value="WEST BENGAL">WEST BENGAL</option>

		</select>
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Pin code
                    </td>
		<td align="left">
                        :*
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_PermanentPinCode" type="text" maxlength="6" id="ctl00_cph_FixedWidth_txt_vc_PermanentPinCode" Class="input-text" onkeypress="return isNumberKey(event)" onpaste="return false" style="width:100px;text-transform: uppercase;" />
                    </td>
	</tr>
	<tr>
		<td class="fieldInfo" align="left">
                        Landline No.
                    </td>
		<td align="left">
                        :
                    </td>
		<td align="left">
                    </td>
		<td colspan="4">
                        <input name="ctl00$cph_FixedWidth$txt_vc_PermanentLandlineNumber" type="text" maxlength="15" id="ctl00_cph_FixedWidth_txt_vc_PermanentLandlineNumber" Class="input-text" onkeypress="return isNumberKey(event)" onpaste="return false" style="width:200px;text-transform: uppercase;" />&nbsp; <span class="EntryFieldInfo">(Landline No
                                with STD Code ex. 01123882323)</span>
                    </td>
	</tr>
	<tr>
		<td colspan="7" style="font-size: 14px; text-align: center; color: Red; font-weight: bold;">
                    </td>
	</tr>
	<tr>
		<td colspan="7">
                        <table>
                            <tr>
                                <td class="fieldInfo" align="left" valign="top">
                                    Security Code<br />
                                    (सुरक्षा कोड)
                                </td>
                                <td align="left" valign="top">
                                    :*
                                </td>
                                <td align="left" valign="top">
                                    <span id="ctl00_cph_FixedWidth_spanentry_Captcha" class="">&nbsp;</span>
                                </td>
                                <td colspan="2" valign="top">
                                    <input name="ctl00$cph_FixedWidth$TxtCAPTCHA" type="text" maxlength="6" id="ctl00_cph_FixedWidth_TxtCAPTCHA" onblur="ValidateCAPTCHA();" class="input-text" style="width:200px;" />
                                    <br />
                                    <img id="ctl00_cph_FixedWidth_IMGCaptcha" src="" style="height:50px;width:200px;border-width:0px;" />
                                    <br />
                                    <input type="hidden" name="ctl00$cph_FixedWidth$HiddenField_CaptchaCode" id="ctl00_cph_FixedWidth_HiddenField_CaptchaCode" />
                                </td>
                                <td colspan="2" valign="top">
                                    <span class="EntryFieldInfo">(Enter the characters you see in the image Box<br />
                                        Characters are not case-sensitive.)</span>
                                    <br />
                                    <br />
                                    <a id="cpatcha" href="#cpatcha" onclick="RefreshCAPTCHAImage();">Refresh CAPTCHA Image</a>
                                </td>
                            </tr>
                        </table>
                    </td>
	</tr>
	<tr>
		<td colspan="7" style="font-size: 14px; text-align: center; color: Red; font-weight: bold;">
                    </td>
	</tr>
	<tr>
		<td colspan="7">
                        &nbsp;
                    </td>
	</tr>
	<tr>
		<td colspan="7">
                        <span id="ctl00_cph_FixedWidth_lbl_DataEntryMessage" style="color:Red;"></span>
                    </td>
	</tr>
	<tr>
		<td colspan="7">
                        <hr style="color: #1F7FC3;" align="left">
                    </td>
	</tr>
	<tr>
		<td colspan="7" align="center">
                        
                        <input type="submit" name="ctl00$cph_FixedWidth$btn_Submit_Appliction_step1" value="Save and Continue" onclick="return ValidateFormData();" id="ctl00_cph_FixedWidth_btn_Submit_Appliction_step1" class="SubmitButton" style="color:White;background-color:#0066FF;" />
                    </td>
	</tr>
</table>

            
            
        </div>
        <div class="content-footer">
            Disclaimer: Content on this webpage is compiled by CEPTAM. Though all efforts have
            been made to keep the content on this webpage accurate and up-to-date, the same
            should not be construed as a statement of law or used for any legal purposes.
        </div>
    </div>

        </div>
    </div>
    <div align="center" class="body">
        
    <script type="text/javascript" language="javascript">
        //document.getElementById("ctl00_cph_FixedWidth_ddl_vc_CandidateInitial").focus();
        RefreshCAPTCHAImage();
        Configure_Nationality();
        Configure_PWD();
        Configure_ESM();
        Configure_ESM_YesNo();
        Configure_VI();
    </script>

    </div>
    <div class="footer" align="center">
        <table border="0" cellpadding="0" cellspacing="0" width="900px">
            <tr>
                <td align="center" class="footer-nav">
                    Compatible with latest version of Mozilla, Google Chrome, IE
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
