<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="/esapi" prefix="esapi" %>
<%@taglib uri="/csrf" prefix="csrf" %>
<%@page import="java.util.*"%>
<jsp:include page="../common/header.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		 <link rel="stylesheet" type="text/css" href="resources/css/formDesign.css"/>
		 <title><spring:message code="label.header"/></title>
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"/>
       	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"/>
  		 <script type="text/javascript" language="javascript" src="resources/js/jquery-ui.js"></script>
		 <script type="text/javascript" language="javascript" src="resources/js/jquery-1.9.1.js"></script>	
  		 <script  type="text/javascript"  language="javascript" src="resources/newEdist/js/jquery.sliderTabs.min.js"></script>
  		 <script  type="text/javascript"  language="javascript" src="resources/newEdist/js/jquery.sliderTabs.js"></script>
  		 <link rel="stylesheet" href="resources/newEdist/css/jquery.sliderTabs.css"/>
   		 <link rel="stylesheet" href="resources/newEdist/css/jquery.sliderTabs.min.css"/>
  		 <link rel="stylesheet" href="resources/newEdist/css/material.min.css"/>
		 <script  type="text/javascript"  language="javascript" src="resources/newEdist/js/material.min.js"></script>
		 <link rel="stylesheet" type="text/css" href="resources/newEdist/css/bootstrapValidator.min.css"/>
 		 <script  type="text/javascript"  language="javascript" src="resources/newEdist/js/bootstrapValidator.min.js"></script>
 		 <script type="text/javascript" src="resources/js/Support.js"></script>	
         <script type="text/javascript"   src="resources/js/LanguagesArray.js"></script>
	     <link rel="stylesheet" type="text/css" href="resources/css/FloatingKeyboard.css"/>
	
	<!------------------------------------------ DWR Start----------------------------------------->
	<script type='text/javascript' language="javascript" src='<%=request.getContextPath()%>/dwr/engine.js'></script>
    <script type='text/javascript' language="javascript" src='<%=request.getContextPath()%>/dwr/util.js'></script>
	<script type='text/javascript' language="javascript" src='<%=request.getContextPath()%>/dwr/interface/PaceLocationMasterDataService.js'></script>
	<script type='text/javascript' language="javascript" src='<%=request.getContextPath()%>/dwr/interface/SpeApplLocnDataService.js'></script>
	<script type='text/javascript' language="javascript" src='<%=request.getContextPath()%>/dwr/interface/SpeLocnTypeService.js'></script>
    <script type='text/javascript' language="javascript" src='<%=request.getContextPath()%>/dwr/interface/SpeServiceLocnTypeMapperService.js'></script>
    <!------------------------------------------ DWR End----------------------------------------->
==========================

<style>
    body {
      padding-top: 50px
    }

    #banner {
      border-bottom: none
    }

    .page-header h1 {
      font-size: 4em
    }

    .bs-docs-section {
      margin-top: 8em
    }

    .bs-component {
      position: relative
    }

    .bs-component .modal {
      position: relative;
      top: auto;
      right: auto;
      left: auto;
      bottom: auto;
      z-index: 1;
      display: block
    }

    .bs-component .modal-dialog {
      width: 90%
    }

    .bs-component .popover {
      position: relative;
      display: inline-block;
      width: 220px;
      margin: 20px
    }

    #source-button {
      position: absolute;
      top: 0;
      right: 0;
      z-index: 100;
      font-weight: bold;
      padding: 5px 10px;
    }

    .progress {
      margin-bottom: 10px
    }

    footer {
      margin: 5em 0
    }

    footer li {
      float: left;
      margin-right: 1.5em;
      margin-bottom: 1.5em
    }

    footer p {
      clear: left;
      margin-bottom: 0
    }

    .splash {
      padding: 4em 0 0;
      background-color: #141d27;
      color: #fff;
      text-align: center
    }

    .splash h1 {
      font-size: 4em
    }

    .splash #social {
      margin: 2em 0
    }

    .splash .alert {
      margin: 2em 0
    }

    .section-tout {
      padding: 4em 0 3em;
      border-bottom: 1px solid rgba(0, 0, 0, 0.05);
      background-color: #eaf1f1
    }

    .section-tout .fa {
      margin-right: .5em
    }

    .section-tout p {
      margin-bottom: 3em
    }

    .section-preview {
      padding: 4em 0 4em
    }

    .section-preview .preview {
      margin-bottom: 4em;
      background-color: #eaf1f1
    }

    .section-preview .preview .image {
      position: relative
    }

    .section-preview .preview .image:before {
      box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.1);
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      content: "";
      pointer-events: none
    }

    .section-preview .preview .options {
      padding: 1em 2em 2em;
      border: 1px solid rgba(0, 0, 0, 0.05);
      border-top: none;
      text-align: center
    }

    .section-preview .preview .options p {
      margin-bottom: 2em
    }

    .section-preview .dropdown-menu {
      text-align: left
    }

    .section-preview .lead {
      margin-bottom: 2em
    }

    @media (max-width: 767px) {
      .section-preview .image img {
        width: 100%
      }
    }

    .sponsor {
      text-align: center
    }

    .sponsor a:hover {
      text-decoration: none
    }

    @media (max-width: 767px) {
      #banner {
        margin-bottom: 2em;
        text-align: center
      }
    }

    .infobox .btn-sup {
      color: rgba(0, 0, 0, 0.5);
      font-weight: bold;
      font-size: 15px;
      line-height: 30px;
    }

    .infobox .btn-sup img {
      opacity: 0.5;
      height: 30px;
    }

    .infobox .btn-sup span {
      padding-left: 10px;
      position: relative;
      top: 2px;
    }

    .icons-material .row {
      margin-bottom: 20px;
    }

    .icons-material .col-xs-2 {
      text-align: center;
    }

    .icons-material i {
      font-size: 34pt;
    }

    .icon-preview {
      display: inline-block;
      padding: 10px;
      margin: 10px;
      background: #D5D5D5;
      border-radius: 3px;
      cursor: pointer;
    }

    .icon-preview span {
      display: none;
      position: absolute;
      background: black;
      color: #EEE;
      padding: 5px 8px;
      font-size: 15px;
      border-radius: 2px;
      z-index: 10;
    }

    .icon-preview:hover i {
      color: #4285f4;
    }

    .icon-preview:hover span {
      display: block;
      cursor: text;
    }

  </style>
  
  
  <script type="text/javascript">
	$(function() {
var slider = $("div#mySliderTabs").sliderTabs({
  autoplay: false,
  mousewheel: false,
  position: "top",
  indicators: true,
  panelArrows: true,
  panelArrowsShowOnHover: true,
  tabs: true,
  classes: {
    panel: 'demoPanel'
  }
});
});
	
	
	
	window.history.forward();
	function noBack(){
		window.history.forward();
		}
	
	</script>
	
	
	</style>
  
<style type="text/css">
    .form-label{
        width:225px !important;
    }
    .form-label-left{
        width:225px !important;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:225px !important;
    }
    body, html{
        margin:0;
        padding:0;
        background:#FFFFFF;
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:800px;
        background:#FFFFFF;
        color:#555555 !important;
        font-family:'Arial';
        font-size:14px;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color:#555555;
    }

/* tool tip position right */ 
.tool-tip.right{ 
top: 50%; 
right: 0px; 
left: auto; 
margin-top: -15px; 
margin-right: -103px;
}
</style>
	
	
  
  
  
  

<style type="text/css">
		@font-face
		{
		font-family: 'SakalBharati';
		font-style: normal;
		font-weight: normal;
		src: url( 'resources/Fonts/SakalBharati.eot' );
		src: local( 'SakalBharati' ),
		url('resources/Fonts/SakalBharat.ttf')format( 'truetype' ),
		url('resources/Fonts/sakalBharati.svg#SakalBharati')format( 'svg' );
		}
	   </style>



 

  <script>
/*   $(document)
	.ready(
	
			function() {
				$("#myDiv5")
				.change(
						function(event) {
							if(document.getElementById("myDiv5").style.display=="block"){
								required : true;
							}
			    }); */
			
var locnId=null;
var locnId1=null;


function callDWRFunction(){
	var locnType= document.getElementById('input_1').value;
	("locn type is "+locnType);
	if(locnType == 6)
		getSubDistrict();
	if(locnType == 12 || locnType == 15)
		getZilaPanchayat();
	if(locnType == 8)
		getTownPanchayat();
	if(locnType == 9)
		getMunicipality();
	if(locnType == 10 || locnType == 14)
		getCorporation();
	if(locnType == 25)
		getDistCollectorate();
	if(locnType == 27)
		getRTOname();
	
	//For New Location
	if(locnType == 31)
		getHQ();
	
	if(locnType == 32)
		getCollege();
	
	if(locnType == 36)
		getUniversity();


	if(locnType == 37 || locnType == 44)
		getBlockSchool();
	
	if(locnType == 38 || locnType == 45)
		getSpoffice();
	
	if(locnType == 39){
		
		getITI();
	}
	
	if(locnType == 40)
    
		getJail();
    
	if(locnType == 21)
    	getDistrictHospital();
	if(locnType == 22)
    	getDistrictCentralHealthCenter();
	if(locnType == 23)
    	getDistrictPrimaryHealthCenter();
	
}
//District Hospital Start   
function getDistrictHospital(){
    var pcdiParentLocId_Corporation= document.getElementById('input_111').value;
    var officeTypeId_Corporation= 21;
    removeOptions(document.getElementById("input_DH"));
    PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_Corporation),"pcdiLocTypeId", parseInt(officeTypeId_Corporation),{callback : handleReceivedDistrictHospitalData});
           }
    function handleReceivedDistrictHospitalData(data){
    
        for(var key in data){
           var anOption = document.createElement("OPTION");
           document.getElementById("input_DH").options.add(anOption);
           if(sessionValue=="hi"){
               anOption.text = data[key].pcdvLocationNameLocal;
               }
               else
	               anOption.text = data[key].pcdvLocationNameE;
               anOption.value = data[key].pcdiLocationId;
              }
         } 
//District Hospital End
    //District Central Health Start   
    function getDistrictCentralHealthCenter(){
        var pcdiParentLocId_Corporation= document.getElementById('input_111').value;
        var officeTypeId_Corporation= 22;
        removeOptions(document.getElementById("input_DCHC"));
        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_Corporation),"pcdiLocTypeId", parseInt(officeTypeId_Corporation),{callback : handleReceivedDistrictCentralHealthCenterData});
               }
        function handleReceivedDistrictCentralHealthCenterData(data){
        
            for(var key in data){
               var anOption = document.createElement("OPTION");
               document.getElementById("input_DCHC").options.add(anOption);
               if(sessionValue=="hi"){
                   anOption.text = data[key].pcdvLocationNameLocal;
                   }
                   else
    	               anOption.text = data[key].pcdvLocationNameE;
                   anOption.value = data[key].pcdiLocationId;
                  }
             } 
    //District  Central Health End
        //District Primary Health Start   
        function getDistrictPrimaryHealthCenter(){
            var pcdiParentLocId_Corporation= document.getElementById('input_111').value;
            var officeTypeId_Corporation= 23;
            removeOptions(document.getElementById("input_DPHC"));
            PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_Corporation),"pcdiLocTypeId", parseInt(officeTypeId_Corporation),{callback : handleReceivedDistrictPrimaryHealthCenterData});
                   }
            function handleReceivedDistrictPrimaryHealthCenterData(data){
            
                for(var key in data){
                   var anOption = document.createElement("OPTION");
                   document.getElementById("input_DPHC").options.add(anOption);
                   if(sessionValue=="hi"){
                       anOption.text = data[key].pcdvLocationNameLocal;
                       }
                       else
        	               anOption.text = data[key].pcdvLocationNameE;
                       anOption.value = data[key].pcdiLocationId;
                      }
                 } 
        //District Hospital End



function getHierarchy(){
	
	
	//alert("inside get heri");
	var input=document.getElementById('input_1').value;
	//alert("hierchy "+input);
	if(document.getElementById('input_1').value==6 || document.getElementById('input_1').value==11){
		document.getElementById("myDiv1").style.display="block";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv10").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		}
	else if(document.getElementById('input_1').value==7 || document.getElementById('input_1').value==12 ||document.getElementById('input_1').value==15 || document.getElementById('input_1').value==17){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="block";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		}
	else if(document.getElementById('input_1').value==8 || document.getElementById('input_1').value==18){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="block";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		}
	else if(document.getElementById('input_1').value==9 || document.getElementById('input_1').value==13 ||document.getElementById('input_1').value==19){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="block";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		}
	else if(document.getElementById('input_1').value==10 || document.getElementById('input_1').value==14 ||document.getElementById('input_1').value==16 ||document.getElementById('input_1').value==20){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="block";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		}
	else if(document.getElementById('input_1').value==25){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="block";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		}
	else if(document.getElementById('input_1').value==27){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="block";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		}
	
	
	//For New Location
	else if(document.getElementById('input_1').value==31){
		
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv10").style.display="block";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		
	}
	
	
	else if(document.getElementById('input_1').value==32){
		
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv10").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("myDiv11").style.display="block";
		//document.getElementById("officeTypeDiv").style.display="block";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		
		
		
	}
	
	
else if(document.getElementById('input_1').value==36){
		
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv10").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("myDiv12").style.display="block";
		//document.getElementById("officeTypeDiv").style.display="block";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		
		
		
	}
	
	
else if(document.getElementById('input_1').value==37){
	
	document.getElementById("myDiv1").style.display="none";
	document.getElementById("myDiv2").style.display="none";
	document.getElementById("myDiv6").style.display="none";
	document.getElementById("myDiv9").style.display="none";
	document.getElementById("myDiv5").style.display="none";
	document.getElementById("myDiv7").style.display="none";
	document.getElementById("myDiv8").style.display="none";
	document.getElementById("myDiv10").style.display="none";
	document.getElementById("myDiv11").style.display="none";
	document.getElementById("myDiv12").style.display="none";
	document.getElementById("myDiv14").style.display="none";
	document.getElementById("myDiv15").style.display="none";
	document.getElementById("myDiv16").style.display="none";
	document.getElementById("myDiv13").style.display="block";
	//document.getElementById("officeTypeDiv").style.display="block";
	document.getElementById("districtHospital").style.display="none";
	document.getElementById("districtCentralHealthCenter").style.display="none";
	document.getElementById("districtPrimaryHealthCenter").style.display="none";
	


	
}
	
else if(document.getElementById('input_1').value==38  || document.getElementById('input_1').value==45){

	document.getElementById("myDiv1").style.display="none";
	document.getElementById("myDiv2").style.display="none";
	document.getElementById("myDiv6").style.display="none";
	document.getElementById("myDiv9").style.display="none";
	document.getElementById("myDiv5").style.display="none";
	document.getElementById("myDiv7").style.display="none";
	document.getElementById("myDiv8").style.display="none";
	document.getElementById("myDiv10").style.display="none";
	document.getElementById("myDiv11").style.display="none";
	document.getElementById("myDiv12").style.display="none";
	document.getElementById("myDiv13").style.display="none";
	document.getElementById("myDiv15").style.display="none";
	document.getElementById("myDiv16").style.display="none";
	document.getElementById("myDiv14").style.display="block";
	//document.getElementById("officeTypeDiv").style.display="block";
	document.getElementById("districtHospital").style.display="none";
	document.getElementById("districtCentralHealthCenter").style.display="none";
	document.getElementById("districtPrimaryHealthCenter").style.display="none";
	
	
	}
	
else if(document.getElementById('input_1').value==39){
	
	
	document.getElementById("myDiv1").style.display="none";
	document.getElementById("myDiv2").style.display="none";
	document.getElementById("myDiv6").style.display="none";
	document.getElementById("myDiv9").style.display="none";
	document.getElementById("myDiv5").style.display="none";
	document.getElementById("myDiv7").style.display="none";
	document.getElementById("myDiv8").style.display="none";
	document.getElementById("myDiv10").style.display="none";
	document.getElementById("myDiv11").style.display="none";
	document.getElementById("myDiv12").style.display="none";
	document.getElementById("myDiv13").style.display="none";
	document.getElementById("myDiv14").style.display="none";
	document.getElementById("myDiv16").style.display="none";
	document.getElementById("myDiv15").style.display="block";
	//document.getElementById("officeTypeDiv").style.display="block";
	document.getElementById("districtHospital").style.display="none";
	document.getElementById("districtCentralHealthCenter").style.display="none";
	document.getElementById("districtPrimaryHealthCenter").style.display="none";
	
	}

else if(document.getElementById('input_1').value==40){
	//alert("inside jail");
	/* document.getElementById("myDiv1").style.display="none";
	document.getElementById("myDiv2").style.display="none";
	document.getElementById("myDiv6").style.display="none";
	document.getElementById("myDiv9").style.display="none";
	document.getElementById("myDiv5").style.display="none";
	document.getElementById("myDiv7").style.display="none";
	document.getElementById("myDiv8").style.display="none";
	document.getElementById("myDiv10").style.display="none";
	document.getElementById("myDiv11").style.display="none";
	document.getElementById("myDiv12").style.display="none";
	document.getElementById("myDiv13").style.display="none";
	document.getElementById("myDiv14").style.display="none";
	document.getElementById("myDiv15").style.display="none";
	document.getElementById("myDiv16").style.display="block"; */
	
	
	
	document.getElementById("myDiv1").style.display="none";
	document.getElementById("myDiv2").style.display="none";
	document.getElementById("myDiv6").style.display="none";
	document.getElementById("myDiv9").style.display="none";
	document.getElementById("myDiv5").style.display="none";
	document.getElementById("myDiv7").style.display="none";
	document.getElementById("myDiv8").style.display="none";
	document.getElementById("myDiv10").style.display="none";
	document.getElementById("myDiv11").style.display="none";
	document.getElementById("myDiv12").style.display="none";
	document.getElementById("myDiv13").style.display="none";
	document.getElementById("myDiv14").style.display="none";
	document.getElementById("myDiv15").style.display="none";
	
	document.getElementById("myDiv16").style.display="block";
	//document.getElementById("officeTypeDiv").style.display="block";
	document.getElementById("districtHospital").style.display="none";
	document.getElementById("districtCentralHealthCenter").style.display="none";
	document.getElementById("districtPrimaryHealthCenter").style.display="none";
	
}else if(document.getElementById('input_1').value==21){
	
	
	
	
	document.getElementById("myDiv1").style.display="none";
	document.getElementById("myDiv2").style.display="none";
	document.getElementById("myDiv6").style.display="none";
	document.getElementById("myDiv9").style.display="none";
	document.getElementById("myDiv5").style.display="none";
	document.getElementById("myDiv7").style.display="none";
	document.getElementById("myDiv8").style.display="none";
	document.getElementById("myDiv10").style.display="none";
	document.getElementById("myDiv11").style.display="none";
	document.getElementById("myDiv12").style.display="none";
	document.getElementById("myDiv13").style.display="none";
	document.getElementById("myDiv14").style.display="none";
	document.getElementById("myDiv15").style.display="none";
	
	document.getElementById("myDiv16").style.display="none";
	//document.getElementById("officeTypeDiv").style.display="block";
	document.getElementById("districtHospital").style.display="block";
	document.getElementById("districtCentralHealthCenter").style.display="none";
	document.getElementById("districtPrimaryHealthCenter").style.display="none";
	
}else if(document.getElementById('input_1').value==22){

	
	
	document.getElementById("myDiv1").style.display="none";
	document.getElementById("myDiv2").style.display="none";
	document.getElementById("myDiv6").style.display="none";
	document.getElementById("myDiv9").style.display="none";
	document.getElementById("myDiv5").style.display="none";
	document.getElementById("myDiv7").style.display="none";
	document.getElementById("myDiv8").style.display="none";
	document.getElementById("myDiv10").style.display="none";
	document.getElementById("myDiv11").style.display="none";
	document.getElementById("myDiv12").style.display="none";
	document.getElementById("myDiv13").style.display="none";
	document.getElementById("myDiv14").style.display="none";
	document.getElementById("myDiv15").style.display="none";
	
	document.getElementById("myDiv16").style.display="none";
	//document.getElementById("officeTypeDiv").style.display="block";
	document.getElementById("districtHospital").style.display="none";
	document.getElementById("districtCentralHealthCenter").style.display="block";
	document.getElementById("districtPrimaryHealthCenter").style.display="none";
	
}
else if(document.getElementById('input_1').value==23){
	
	
	document.getElementById("myDiv1").style.display="none";
	document.getElementById("myDiv2").style.display="none";
	document.getElementById("myDiv6").style.display="none";
	document.getElementById("myDiv9").style.display="none";
	document.getElementById("myDiv5").style.display="none";
	document.getElementById("myDiv7").style.display="none";
	document.getElementById("myDiv8").style.display="none";
	document.getElementById("myDiv10").style.display="none";
	document.getElementById("myDiv11").style.display="none";
	document.getElementById("myDiv12").style.display="none";
	document.getElementById("myDiv13").style.display="none";
	document.getElementById("myDiv14").style.display="none";
	document.getElementById("myDiv15").style.display="none";
	
	document.getElementById("myDiv16").style.display="none";
	//document.getElementById("officeTypeDiv").style.display="block";
	document.getElementById("districtHospital").style.display="none";
	document.getElementById("districtCentralHealthCenter").style.display="none";
	document.getElementById("districtPrimaryHealthCenter").style.display="block";
	
}
	
  }
     
    function removeOptions(selectbox)
    {
	
    var i;
    
    for(i=selectbox.options.length-1;i>=1;i--)
    {
        selectbox.remove(i);
    }
  }
    
    function removeOption(selectbox)
    {
	
    var i;
    
    for(i=selectbox.options.length-1;i>=0;i--)
    {
        selectbox.remove(i);
    }
  }
    //var sessionValue=document.getElementById('hiddenSession').value;
    var sessionValue = '<%=session.getAttribute("localLang")%>';
    function getSubDistrict(){
    	var pcdiParentLocId_SubDistrict= document.getElementById('input_111').value;
        var officeTypeId_SubDistrict= 6;
        removeOptions(document.getElementById("input_2"));
        //-----------------------------Added for Revenue Services on 28/05/2015-----------------------------------
        var serviceID = document.getElementById("serviceId").value;
        if(serviceID == 35 || serviceID == 37 || serviceID == 38)
        	PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_SubDistrict),"pcdiLocTypeId", parseInt(officeTypeId_SubDistrict),{callback : handleReceivedDataRevenue});
        else       
        	PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_SubDistrict),"pcdiLocTypeId", parseInt(officeTypeId_SubDistrict),{callback : handleReceivedData});
        }
    
    function handleReceivedDataRevenue(data){
        for(var key in data){
            var anOption = document.createElement("OPTION");
           	if(data[key].pcdiLocationId == document.getElementById("lskLocnDetails").value){
		    	 	document.getElementById("input_2").options.add(anOption);		    	 	
		     	if(sessionValue=="hi"){
	               anOption.text = data[key].pcdvLocationNameLocal;
	               }
	               else 
		               anOption.text = data[key].pcdvLocationNameE;
	               anOption.value = data[key].pcdiLocationId;
        			}
	              }	  
    
      }
    //---------------------------------------------------------------------------------------------     
      function handleReceivedData(data){
        for(var key in data){
            var anOption = document.createElement("OPTION");
		    document.getElementById("input_2").options.add(anOption);
		     if(sessionValue=="hi"){
	               anOption.text = data[key].pcdvLocationNameLocal;
	               }
	               else 
		               anOption.text = data[key].pcdvLocationNameE;
	               anOption.value = data[key].pcdiLocationId;
	              }
	         } 


    function getRevenueVillage(){
     	 var pcdiParentLocId_RevenueVillage= document.getElementById('input_2').value;
     	 
         var officeTypeId_RevenueVillage=11;
         removeOptions(document.getElementById("input_3"));
         PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_RevenueVillage),"pcdiLocTypeId", parseInt(officeTypeId_RevenueVillage),{callback : handleReceivedSubDistrictData});
         }
         function handleReceivedSubDistrictData(data){
          for(var key in data){
             var anOption = document.createElement("OPTION");
 		     document.getElementById("input_3").options.add(anOption);
 		     if(sessionValue=="hi"){
                anOption.text = data[key].pcdvLocationNameLocal;
                }
                else 
 	               anOption.text = data[key].pcdvLocationNameE;
                anOption.value = data[key].pcdiLocationId;
               }
          } 

    function getZilaPanchayat(){
      	var pcdiParentLocId_ZilaPanchayat= document.getElementById('input_111').value;
        var officeTypeId_ZilaPanchayat= 7;
        removeOptions(document.getElementById("input_4"));
        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_ZilaPanchayat),"pcdiLocTypeId", parseInt(officeTypeId_ZilaPanchayat),{callback : handleReceivedZilaPanchayatData});
          }
        function handleReceivedZilaPanchayatData(data){
           for(var key in data){
             var anOption = document.createElement("OPTION");
  			 document.getElementById("input_4").options.add(anOption);
  			 if(sessionValue=="hi"){
                anOption.text = data[key].pcdvLocationNameLocal;
                }
                else 
 	               anOption.text = data[key].pcdvLocationNameE;
                anOption.value = data[key].pcdiLocationId;
               }
          } 

    function getBlockPanchayat(){
        var pcdiParentLocId_BlockPanchayat= document.getElementById('input_4').value;
        var officeTypeId_BlockPanchayat= 12;
        removeOptions(document.getElementById("input_5"));
        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_BlockPanchayat),"pcdiLocTypeId", parseInt(officeTypeId_BlockPanchayat),{callback : handleReceivedBlockPanchayatData});
             }
        function handleReceivedBlockPanchayatData(data){
             for(var key in data){
               var anOption = document.createElement("OPTION");
     		   document.getElementById("input_5").options.add(anOption);
     		   if(sessionValue=="hi"){
                  anOption.text = data[key].pcdvLocationNameLocal;
                  }
                  else 
   	               anOption.text = data[key].pcdvLocationNameE;
                  anOption.value = data[key].pcdiLocationId;
                 }
            } 

          
    function getGramPanchayat(){
         var pcdiParentLocId_GramPanchayat= document.getElementById('input_5').value;
         var officeTypeId_GramPanchayat= 15;
         removeOptions(document.getElementById("input_6"));
         PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_GramPanchayat),"pcdiLocTypeId", parseInt(officeTypeId_GramPanchayat),{callback : handleReceivedGramPanchayatData});
               }
         function handleReceivedGramPanchayatData(data){
             for(var key in data){
                var anOption = document.createElement("OPTION");
       		    document.getElementById("input_6").options.add(anOption);
       		  if(sessionValue=="hi"){
                 anOption.text = data[key].pcdvLocationNameLocal;
                 }
                 else 
  	               anOption.text = data[key].pcdvLocationNameE;
                 anOption.value = data[key].pcdiLocationId;
                }
           } 

    function getWard(){
         var pcdiParentLocId_Ward= document.getElementById('input_6').value;
         var officeTypeId_Ward= 17;
         removeOptions(document.getElementById("input_7"));
         PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_Ward),"pcdiLocTypeId", parseInt(officeTypeId_Ward),{callback : handleReceivedWardData});
                   }
         function handleReceivedWardData(data){
             for(var key in data){
                var anOption = document.createElement("OPTION");
           		document.getElementById("input_7").options.add(anOption);
           		 if(sessionValue=="hi"){
                    anOption.text = data[key].pcdvLocationNameLocal;
                    }
                    else 
     	               anOption.text = data[key].pcdvLocationNameE;
                    anOption.value = data[key].pcdiLocationId;
                   }
              } 

     function getTownPanchayat(){
         var pcdiParentLocId_TownPanchayat= document.getElementById('input_111').value;
         var officeTypeId_TownPanchayat= 8;
         removeOptions(document.getElementById("input_20"));
         PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_TownPanchayat),"pcdiLocTypeId", parseInt(officeTypeId_TownPanchayat),{callback : handleReceivedTownPanchayatData});
                }
         function handleReceivedTownPanchayatData(data){
              for(var key in data){
                 var anOption = document.createElement("OPTION");
            	 document.getElementById("input_20").options.add(anOption);
            	  if(sessionValue=="hi"){
                     anOption.text = data[key].pcdvLocationNameLocal;
                     }
                     else 
      	               anOption.text = data[key].pcdvLocationNameE;
                     anOption.value = data[key].pcdiLocationId;
                    }
               } 

    function getTownPanchayatWard(){
        var pcdiParentLocId_TownPanchayatWard= document.getElementById('input_20').value;
        var officeTypeId_TownPanchayatWard= 18;
        removeOptions(document.getElementById("input_11"));
        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_TownPanchayatWard),"pcdiLocTypeId", parseInt(officeTypeId_TownPanchayatWard),{callback : handleReceivedTownPanchayatWardData});
                     }
        function handleReceivedTownPanchayatWardData(data){
              for(var key in data){
                 var anOption = document.createElement("OPTION");
                 document.getElementById("input_11").options.add(anOption);
                  if(sessionValue=="hi"){
                     anOption.text = data[key].pcdvLocationNameLocal;
                     }
                     else 
      	               anOption.text = data[key].pcdvLocationNameE;
                     anOption.value = data[key].pcdiLocationId;
                    }
               } 

    function getMunicipality(){
        var pcdiParentLocId_Municipality= document.getElementById('input_111').value;
        var officeTypeId_Municipality= 9;
        removeOptions(document.getElementById("input_19"));
        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_Municipality),"pcdiLocTypeId", parseInt(officeTypeId_Municipality),{callback : handleReceivedMunicipalityData});
                      }
        function handleReceivedMunicipalityData(data){
            for(var key in data){
               var anOption = document.createElement("OPTION");
               document.getElementById("input_19").options.add(anOption);
               if(sessionValue=="hi"){
               anOption.text = data[key].pcdvLocationNameLocal;
               }
               else 
	               anOption.text = data[key].pcdvLocationNameE;
               anOption.value = data[key].pcdiLocationId;
              }
         } 
                  
    function getMunicipalityDivision(){
        var pcdiParentLocId_MunicipalityDivision= document.getElementById('input_19').value;
        var officeTypeId_MunicipalityDivision= 13;
        removeOptions(document.getElementById("input_9"));
        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_MunicipalityDivision),"pcdiLocTypeId", parseInt(officeTypeId_MunicipalityDivision),{callback : handleReceivedMunicipalityDivisionData});
                 }
        function handleReceivedMunicipalityDivisionData(data){
            for(var key in data){
               var anOption = document.createElement("OPTION");
               document.getElementById("input_9").options.add(anOption);
               if(sessionValue=="hi")
                   anOption.text = data[key].pcdvLocationNameLocal;
                   else 
                   anOption.text = data[key].pcdvLocationNameE;
                   anOption.value = data[key].pcdiLocationId;
                  }
             } 

    function getMunicipalityWard(){
        var pcdiParentLocId_MunicipalityWard= document.getElementById('input_9').value;
        var officeTypeId_MunicipalityWard= 19;
        removeOptions(document.getElementById("input_12"));
        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_MunicipalityWard),"pcdiLocTypeId", parseInt(officeTypeId_MunicipalityWard),{callback : handleReceivedMunicipalityWardData});
                  }
        function handleReceivedMunicipalityWardData(data){
            for(var key in data){
               var anOption = document.createElement("OPTION");
               document.getElementById("input_12").options.add(anOption);
              if(sessionValue=="hi")
                   anOption.text = data[key].pcdvLocationNameLocal;
                   else 
                   anOption.text = data[key].pcdvLocationNameE;
                   anOption.value = data[key].pcdiLocationId;
                  }
             } 
                        
    function getCorporation(){
        var pcdiParentLocId_Corporation= document.getElementById('input_111').value;
        var officeTypeId_Corporation= 10;
        removeOptions(document.getElementById("input_10"));
        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_Corporation),"pcdiLocTypeId", parseInt(officeTypeId_Corporation),{callback : handleReceivedCorporationData});
               }
        function handleReceivedCorporationData(data){
            for(var key in data){
               var anOption = document.createElement("OPTION");
               document.getElementById("input_10").options.add(anOption);
               if(sessionValue=="hi"){
                   anOption.text = data[key].pcdvLocationNameLocal;
                   }
                   else
    	               anOption.text = data[key].pcdvLocationNameE;
                   anOption.value = data[key].pcdiLocationId;
                  }
             } 

    function getCorporationZone(){
        var pcdiParentLocId_CorporationZone= document.getElementById('input_10').value;
        var officeTypeId_CorporationZone= 14;
        removeOptions(document.getElementById("input_17"));
        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_CorporationZone),"pcdiLocTypeId", parseInt(officeTypeId_CorporationZone),{callback : handleReceivedCorporationZoneData});
               }
        function handleReceivedCorporationZoneData(data){
             for(var key in data){
                var anOption = document.createElement("OPTION");
                document.getElementById("input_17").options.add(anOption);
                 if(sessionValue=="hi"){
                    anOption.text = data[key].pcdvLocationNameLocal;
                    }
                    else
     	               anOption.text = data[key].pcdvLocationNameE;
                    anOption.value = data[key].pcdiLocationId;
                    $("#input_17 option[value=25110]").remove();
                   }
              }  

    function getCorporationDivision(){
         var pcdiParentLocId_CorporationDivision= document.getElementById('input_17').value;
         var officeTypeId_CorporationDivision= 16;
         removeOptions(document.getElementById("input_13"));
         PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_CorporationDivision),"pcdiLocTypeId", parseInt(officeTypeId_CorporationDivision),{callback : handleReceivedCorporationDivisionData});
                 }
         function handleReceivedCorporationDivisionData(data){
             for(var key in data){
                var anOption = document.createElement("OPTION");
                document.getElementById("input_13").options.add(anOption);
                 if(sessionValue=="hi"){
                    anOption.text = data[key].pcdvLocationNameLocal;
                    }
                    else 
     	               anOption.text = data[key].pcdvLocationNameE;
                    anOption.value = data[key].pcdiLocationId;
                   }
              }                                               
    function getCorporationWard(){
        var pcdiParentLocId_CorporationWard= document.getElementById('input_13').value;
        var officeTypeId_CorporationWard= 20;
        removeOptions(document.getElementById("input_14"));                  
        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_CorporationWard),"pcdiLocTypeId", parseInt(officeTypeId_CorporationWard),{callback : handleReceivedCorporationWardData});
                  }
        function handleReceivedCorporationWardData(data){
             for(var key in data){
                var anOption = document.createElement("OPTION");
                document.getElementById("input_14").options.add(anOption);
                 if(sessionValue=="hi"){
                    anOption.text = data[key].pcdvLocationNameLocal;
                    }
                    else 
     	               anOption.text = data[key].pcdvLocationNameE;
                    anOption.value = data[key].pcdiLocationId;
                   }
              }                                          
			
		function getDistCollectorate(){
        	var pcdiParentLocId_DistCollectorate= document.getElementById('input_111').value;
            var officeTypeId_DistCollectorate= 25;
            removeOptions(document.getElementById("DistCollectorate"));
            PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_DistCollectorate),"pcdiLocTypeId", parseInt(officeTypeId_DistCollectorate),{callback : handleReceivedDistCollectorateData});
            }
          function handleReceivedDistCollectorateData(data){
            for(var key in data){
                var anOption = document.createElement("OPTION");
    		    document.getElementById("DistCollectorate").options.add(anOption);
    		     if(sessionValue=="hi"){
    	               anOption.text = data[key].pcdvLocationNameLocal;
    	               }
    	               else 
    		               anOption.text = data[key].pcdvLocationNameE;
    	               anOption.value = data[key].pcdiLocationId;
    	              }
    	         }
          
          function getRTOname(){
            	var pcdiParentLocId_RTO= document.getElementById('input_111').value;
                var officeTypeId_RTO= 27;
                removeOptions(document.getElementById("RTO"));
                PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_RTO),"pcdiLocTypeId", parseInt(officeTypeId_RTO),{callback : handleReceivedRTOData});
                }
              function handleReceivedRTOData(data){
                for(var key in data){
                    var anOption = document.createElement("OPTION");
        		    document.getElementById("RTO").options.add(anOption);
        		     if(sessionValue=="hi"){
        	               anOption.text = data[key].pcdvLocationNameLocal;
        	               }
        	               else 
        		               anOption.text = data[key].pcdvLocationNameE;
        	               anOption.value = data[key].pcdiLocationId;
        	              }
        	         }
              
              // For New Location
              function getHQ(){
                	var pcdiParentLocId_HQ= document.getElementById('input_111').value;
                    var officeTypeId_HQ= 31;
                    removeOptions(document.getElementById("HQ"));
                    PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_HQ),"pcdiLocTypeId", parseInt(officeTypeId_HQ),{callback : handleReceivedHQData});
                    }
                  function handleReceivedHQData(data){
                    for(var key in data){
                        var anOption = document.createElement("OPTION");
            		    document.getElementById("HQ").options.add(anOption);
            		     if(sessionValue=="hi"){
            	               anOption.text = data[key].pcdvLocationNameLocal;
            	               }
            	               else 
            		               anOption.text = data[key].pcdvLocationNameE;
            	               anOption.value = data[key].pcdiLocationId;
            	              }
            	         }
                  
                  
                  function getUniversity(){
                    	//alert("inside un");
                  	  var pcdiParentLocId_university= document.getElementById('input_111').value;
                        var officeTypeId_university= 36;
                        removeOptions(document.getElementById("university"));
                        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_university),"pcdiLocTypeId", parseInt(officeTypeId_university),{callback : handleReceiveduniversity});
                        }
                      function handleReceiveduniversity(data){
                        for(var key in data){
                            var anOption = document.createElement("OPTION");
                		    document.getElementById("university").options.add(anOption);
                		     if(sessionValue=="hi"){
                	               anOption.text = data[key].pcdvLocationNameLocal;
                	               }
                	               else 
                		               anOption.text = data[key].pcdvLocationNameE;
                	               anOption.value = data[key].pcdiLocationId;
                	              }
                	         }
                  
                  
                  function getCollege(){
                    	
                	 // alert("college");
                	  var pcdiParentLocId_College= document.getElementById('input_111').value;
                        var officeTypeId_College= 32;
                        removeOptions(document.getElementById("College"));
                        PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_College),"pcdiLocTypeId", parseInt(officeTypeId_College),{callback : handleReceivedCollegeData});
                        }
                      function handleReceivedCollegeData(data){
                        for(var key in data){
                            var anOption = document.createElement("OPTION");
                            //alert(data[key].pcdvLocationNameLocal);
                		    document.getElementById("College").options.add(anOption);
                		   // alert("after");
                		     if(sessionValue=="hi"){
                	               anOption.text = data[key].pcdvLocationNameLocal;
                	               }
                	               else 
                		               anOption.text = data[key].pcdvLocationNameE;
                	               anOption.value = data[key].pcdiLocationId;
                	              }
                	         }
                      
                      
                      
                      
                      
                      
                      
                  
                      function getCollegeName(){
                    		 var pcdiParentLocId_RevenueVillage= document.getElementById('College').value;
                    		//alert(pcdiParentLocId_RevenueVillage);
                    	    var officeTypeId_RevenueVillage=33;
                    	    removeOptions(document.getElementById("input_c"));
                    	    PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_RevenueVillage),"pcdiLocTypeId", parseInt(officeTypeId_RevenueVillage),{callback : handleReceivedSubDistrictDataCollege});
                    	    }
                    	    function handleReceivedSubDistrictDataCollege(data){
                    	     for(var key in data){
                    	        var anOption = document.createElement("OPTION");
                    	        //alert("inside name");
                    		     document.getElementById("input_c").options.add(anOption);
                    		     if(sessionValue=="hi"){
                    	          
                    		    	 anOption.text = data[key].pcdvLocationNameLocal;
                    	           }
                    	           else 
                    	               anOption.text = data[key].pcdvLocationNameE;
                    	           anOption.value = data[key].pcdiLocationId;
                    	          }
                    	     } 
              
                    	    function getBlockSchool(){
                 	         //  alert("inside schl");
                    	    	var pcdiParentLocId_BlockSchool= document.getElementById('input_111').value;
                 	         // alert("at "+pcdiParentLocId_BlockSchool);
                 	           var officeTypeId_BlockSchool= 37;
                 	           removeOptions(document.getElementById("input_31"));
                 	           PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_BlockSchool),"pcdiLocTypeId", parseInt(officeTypeId_BlockSchool),{callback : handleReceivedBlockSchool});
                 	                  }
                 	           function handleReceivedBlockSchool(data){
                 	                for(var key in data){
                 	                   var anOption = document.createElement("OPTION");
                 	              	 document.getElementById("input_31").options.add(anOption);
                 	              	  if(sessionValue=="hi"){
                 	                       anOption.text = data[key].pcdvLocationNameLocal;
                 	                       }
                 	                       else 
                 	        	               anOption.text = data[key].pcdvLocationNameE;
                 	                       anOption.value = data[key].pcdiLocationId;
                 	                      }
                 	                 } 
                 	       
                 
                 	          function getCluster(){
               	               var pcdiParentLocId_cluster= document.getElementById('input_31').value;
               	               //alert("cluster "+pcdiParentLocId_cluster);
               	               var officeTypeId_cluster= 42;
               	               removeOptions(document.getElementById("input_42"));
               	               PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_cluster),"pcdiLocTypeId", parseInt(officeTypeId_cluster),{callback : handleReceivedCluster});
               	                            }
               	               function handleReceivedCluster(data){
               	                     for(var key in data){
               	                        var anOption = document.createElement("OPTION");
               	                        document.getElementById("input_42").options.add(anOption);
               	                         if(sessionValue=="hi"){
               	                            anOption.text = data[key].pcdvLocationNameLocal;
               	                            }
               	                            else 
               	             	               anOption.text = data[key].pcdvLocationNameE;
               	                            anOption.value = data[key].pcdiLocationId;
               	                           }
               	                      } 
               	               
               	               
               	               
               	               
               	               
               	               function getSchool(){
                   	               var pcdiParentLocId_School= document.getElementById('input_42').value;
                   	               //alert("school "+pcdiParentLocId_School);
                   	               var officeTypeId_School= 44;
                   	               removeOptions(document.getElementById("input_32"));
                   	               PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_School),"pcdiLocTypeId", parseInt(officeTypeId_School),{callback : handleReceivedSchool});
                   	                            }
                   	               function handleReceivedSchool(data){
                   	                     for(var key in data){
                   	                        var anOption = document.createElement("OPTION");
                   	                        document.getElementById("input_32").options.add(anOption);
                   	                         if(sessionValue=="hi"){
                   	                            anOption.text = data[key].pcdvLocationNameLocal;
                   	                            }
                   	                            else 
                   	             	               anOption.text = data[key].pcdvLocationNameE;
                   	                            anOption.value = data[key].pcdiLocationId;
                   	                           }
                   	                      } 
               	               
                 	               
                 	               
                 	               
                   	            //for sp office
                   	            
                	               function getSpoffice(){
                	    	           var pcdiParentLocId_SPOffice= document.getElementById('input_111').value;
                	    	         //alert("at "+pcdiParentLocId_SPOffice);
                	    	           var officeTypeId_SPOffice= 38;
                	    	           removeOptions(document.getElementById("input_33"));
                	    	           PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_SPOffice),"pcdiLocTypeId", parseInt(officeTypeId_SPOffice),{callback : handleReceivedSPOffice});
                	    	                  }
                	    	           function handleReceivedSPOffice(data){
                	    	                for(var key in data){
                	    	                   var anOption = document.createElement("OPTION");
                	    	              	 document.getElementById("input_33").options.add(anOption);
                	    	              	  if(sessionValue=="hi"){
                	    	                       anOption.text = data[key].pcdvLocationNameLocal;
                	    	                       }
                	    	                       else 
                	    	        	               anOption.text = data[key].pcdvLocationNameE;
                	    	                       anOption.value = data[key].pcdiLocationId;
                	    	                      }
                	    	                 } 
                	    	          
                	    
                	    	           function getThana(){
                	    	               var pcdiParentLocId_Thana= document.getElementById('input_33').value;
                	    	               //alert("cluster "+pcdiParentLocId_Thana);
                	    	               var officeTypeId_Thana= 41;
                	    	               removeOptions(document.getElementById("input_34"));
                	    	               PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_Thana),"pcdiLocTypeId", parseInt(officeTypeId_Thana),{callback : handleReceivedThana});
                	    	                            }
                	    	               function handleReceivedThana(data){
                	    	                     for(var key in data){
                	    	                        var anOption = document.createElement("OPTION");
                	    	                        document.getElementById("input_34").options.add(anOption);
                	    	                         if(sessionValue=="hi"){
                	    	                            anOption.text = data[key].pcdvLocationNameLocal;
                	    	                            }
                	    	                            else 
                	    	             	               anOption.text = data[key].pcdvLocationNameE;
                	    	                            anOption.value = data[key].pcdiLocationId;
                	    	                           }
                	    	                      } 
                	    	               
                	    	               
                	    	               function getThanaDivision(){
                    	    	              
                	    	            	  // alert("inside thd"+document.getElementById('input_34').value);
                	    	            	   var pcdiParentLocId_ThanaDivision= document.getElementById('input_34').value;
                    	    	             // alert("thana "+pcdiParentLocId_ThanaDivision);
                    	    	               var officeTypeId_ThanaDivision= 45;
                    	    	               removeOptions(document.getElementById("input_37"));
                    	    	               PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_ThanaDivision),"pcdiLocTypeId", parseInt(officeTypeId_ThanaDivision),{callback : handleReceivedThanaDivision});
                    	    	                            }
                    	    	               function handleReceivedThanaDivision(data){
                    	    	                     for(var key in data){
                    	    	                        var anOption = document.createElement("OPTION");
                    	    	                        document.getElementById("input_37").options.add(anOption);
                    	    	                         if(sessionValue=="hi"){
                    	    	                            anOption.text = data[key].pcdvLocationNameLocal;
                    	    	                            }
                    	    	                            else 
                    	    	             	               anOption.text = data[key].pcdvLocationNameE;
                    	    	                            anOption.value = data[key].pcdiLocationId;
                    	    	                           }
                    	    	                      } 
                 	               
                	    	               function getITI(){
                	    	                 	var pcdiParentLocId_ITI= document.getElementById('input_111').value;
                	    	                   //alert("iti "+pcdiParentLocId_ITI);
                	    	                 	var officeTypeId_ITI= 39;
                	    	                     removeOptions(document.getElementById("input_35"));
                	    	                  
                	    	                     PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_ITI),"pcdiLocTypeId", parseInt(officeTypeId_ITI),{callback : handleReceivedITI});
                	    	                     }
                	    	                   function handleReceivedITI(data){
                	    	                     for(var key in data){
                	    	                         var anOption = document.createElement("OPTION");
                	    	             		    document.getElementById("input_35").options.add(anOption);
                	    	             		     if(sessionValue=="hi"){
                	    	             	            // alert("data[key].pcdvLocationNameLocal "+data[key].pcdvLocationNameLocal);  
                	    	             		    	 anOption.text = data[key].pcdvLocationNameLocal;
                	    	             	               }
                	    	             	               else 
                	    	             		               anOption.text = data[key].pcdvLocationNameE;
                	    	             	               anOption.value = data[key].pcdiLocationId;
                	    	             	              }
                	    	             	         }
                 	               
                	    	                   function getJail(){
                	    	                     	var pcdiParentLocId_Jail= document.getElementById('input_111').value;
                	    	                        //alert("jai id i "+pcdiParentLocId_Jail); 
                	    	                     	var officeTypeId_Jail= 40;
                	    	                         removeOptions(document.getElementById("input_36"));
                	    	                         PaceLocationMasterDataService.findSubDistrict("pcdiParentLocId",parseInt(pcdiParentLocId_Jail),"pcdiLocTypeId", parseInt(officeTypeId_Jail),{callback : handleReceivedJail});
                	    	                         }
                	    	                       function handleReceivedJail(data){
                	    	                         for(var key in data){
                	    	                             var anOption = document.createElement("OPTION");
                	    	                 		    document.getElementById("input_36").options.add(anOption);
                	    	                 		     if(sessionValue=="hi"){
                	    	                 	            // alert("jai val is "+data[key].pcdvLocationNameLocal);  
                	    	                 		    	 anOption.text = data[key].pcdvLocationNameLocal;
                	    	                 	               }
                	    	                 	               else 
                	    	                 		               anOption.text = data[key].pcdvLocationNameE;
                	    	                 	               anOption.value = data[key].pcdiLocationId;
                	    	                 	              }
                	    	                 	         }
                	    	               
              
              
              
              
              

    function getEditPage(){
        var NameOfApplicant=document.getElementById("input_44").value;
        var NameOfBeneficiary=document.getElementById("input_77").value;
        var DateOfApplication=document.getElementById("Deadline").value;
        var AddrOfApplicant=document.getElementById("input_8").value;
        var mobileNo=document.getElementById("mobileNo").value;
        var emailId=document.getElementById("emailId").value;
        var AaddharCardNo=document.getElementById("AaddharCardNo").value;
        var District=document.getElementById("input_111").value;
        
        
        
        window.location="serviceMetaDataEdit.do?<csrf:token uri='serviceMetaDataEdit.do'/>&NameOfApplicant="+NameOfApplicant+"&NameOfBeneficiary="+NameOfBeneficiary+"&DateOfApplication="+DateOfApplication+"&AddrOfApplicant="+AddrOfApplicant+"&mobileNo="+mobileNo+"&emailId="+emailId+"&AaddharCardNo="+AaddharCardNo
                          +"&District="+District;
                   	  } 
    
    var breakLoop = false;

    function populatelastSelectedLocnData(){
		if(document.getElementById("editOfc").checked == true){ 
	    	var lastApplId=document.getElementById("applId").value;
	    	//alert("lastApplId is "+lastApplId);
	    	SpeApplLocnDataService.findByProperty("id.pcdiApplicationId",parseInt(lastApplId),{callback : handleReceivedDataDWR});
			}
	}

		function handleReceivedDataDWR(data){

			for(var key in data){
				var id=data[key].pcdiLocationId;
	            populatelastSelectedLocnDataVal(id);
	            //PaceLocationMasterDataService.findByProperty("pcdiLocationId",parseInt(data[key].pcdiLocationId),{callback : handleReceivedPreData});
	            
	              // }
	    		}
		}
		function populatelastSelectedLocnDataVal(id){
	    	//var lastApplId=document.getElementById("applIdLast").value;
			PaceLocationMasterDataService.findByProperty("pcdiLocationId",parseInt(id),{callback : handleReceivedPreData});
		}
		
		function handleReceivedPreData(data){
    		var datare = data.sort(function(a,b){return a - b});
    		for(var keyval=0;keyval<datare.length;keyval++){
    			var anOption = document.createElement("OPTION");
                if(document.getElementById("editOfc").checked == true){ 
    				if( datare[keyval].pcdiLocTypeId==1){
                        removeOption(document.getElementById("input_111"));
                        document.getElementById("input_111").options.add(anOption);
                        	if(sessionValue=='hi'){
                        	anOption.text = datare[keyval].pcdvLocationNameLocal;
                        	anOption.value = datare[keyval].pcdiLocationId;
                        	}else{
                        	anOption.text = datare[keyval].pcdvLocationNameE;
                        	anOption.value = datare[keyval].pcdiLocationId;
                        	}
                        }
    				if(datare[keyval].pcdiLocTypeId==6){
                	    removeOption(document.getElementById("input_2"));
                	    document.getElementById("input_2").options.add(anOption);
                	    	if(sessionValue=='hi'){
                        	anOption.text = datare[keyval].pcdvLocationNameLocal;
                        	anOption.value = datare[keyval].pcdiLocationId;
                        	}else{
                        	anOption.text = datare[keyval].pcdvLocationNameE;
                        	anOption.value = datare[keyval].pcdiLocationId;
                        	}
                        
                        } 
                 	if( datare[keyval].pcdiLocTypeId==11){
                	 	removeOption(document.getElementById("input_3") );
                	 	document.getElementById("input_3").options.add(anOption);
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        }
                 	if( datare[keyval].pcdiLocTypeId==7){
                        removeOption(document.getElementById("input_4"));
                        document.getElementById("input_4").options.add(anOption);
                        	if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        
                        }
                 	if(datare[keyval].pcdiLocTypeId==12){
                    	removeOption(document.getElementById("input_5") );	                    	 
                    	document.getElementById("input_5").options.add(anOption);
                    	 	if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        
                        } 
                     if(datare[keyval].pcdiLocTypeId==15){
                	    removeOption(document.getElementById("input_6"));
                	    document.getElementById("input_6").options.add(anOption);
                	    	if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        
                        } 
                 	if( datare[keyval].pcdiLocTypeId==17){
                	 	removeOption(document.getElementById("input_7") );
                	 	document.getElementById("input_7").options.add(anOption);
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        } 
                 	if( datare[keyval].pcdiLocTypeId==8){
                        removeOption(document.getElementById("input_20"));
                        document.getElementById("input_20").options.add(anOption);
                        	if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        
                        }
                 	if(datare[keyval].pcdiLocTypeId==18){
                    	removeOption(document.getElementById("input_11") );	                    	 
                    	document.getElementById("input_11").options.add(anOption);
                    		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        } 
                 	if(datare[keyval].pcdiLocTypeId==9){
                    	removeOption(document.getElementById("input_19") );	                    	 
                    	document.getElementById("input_19").options.add(anOption);
                    		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        
                        } 
                    if(datare[keyval].pcdiLocTypeId==13){
                	    removeOption(document.getElementById("input_9"));
                	    document.getElementById("input_9").options.add(anOption);
                	    	if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        
                        } 
                 	if( datare[keyval].pcdiLocTypeId==19){
                	 	removeOption(document.getElementById("input_12") );
                	 	document.getElementById("input_12").options.add(anOption);
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        }
                 	if( datare[keyval].pcdiLocTypeId==10){
                        removeOption(document.getElementById("input_10"));
                        document.getElementById("input_10").options.add(anOption);
                        	if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        
                        }
                 	if(datare[keyval].pcdiLocTypeId==14){
                    	removeOption(document.getElementById("input_17") );	                    	 
                    	document.getElementById("input_17").options.add(anOption);
                    		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        
                        } 
                     if(datare[keyval].pcdiLocTypeId==16){
                	    removeOption(document.getElementById("input_13"));
                	    document.getElementById("input_13").options.add(anOption);
                	    	if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                         
                        } 
                 	if( datare[keyval].pcdiLocTypeId==20){
                	 	removeOption(document.getElementById("input_14") );
                	 	document.getElementById("input_14").options.add(anOption);
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        }
					if( datare[keyval].pcdiLocTypeId==25){
                	 	removeOption(document.getElementById("DistCollectorate") );
                	 	document.getElementById("DistCollectorate").options.add(anOption);
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        }
                 	if( datare[keyval].pcdiLocTypeId==27){
                	 	removeOption(document.getElementById("RTO") );
                	 	document.getElementById("RTO").options.add(anOption);
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        }
                 	
                	if( datare[keyval].pcdiLocTypeId==31){
                	 	removeOption(document.getElementById("HQ") );
                	 	document.getElementById("HQ").options.add(anOption);
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        }
                 	
                	
                	if( datare[keyval].pcdiLocTypeId==39){
                	 	removeOption(document.getElementById("input_35") );
                	 	document.getElementById("input_35").options.add(anOption);
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        }
                	
                	
                	if( datare[keyval].pcdiLocTypeId==40){
                	 	removeOption(document.getElementById("input_36") );
                	 	document.getElementById("input_36").options.add(anOption);
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                        }
                	
                	
                	if( datare[keyval].pcdiLocTypeId==32){
                	 	removeOption(document.getElementById("College") );
                	 	document.getElementById("College").options.add(anOption);
                	 	
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                	 		
                	 		
                	 		
                	 		
                        }
                	
                	if( datare[keyval].pcdiLocTypeId==36){
                	 	removeOption(document.getElementById("university") );
                	 	document.getElementById("university").options.add(anOption);
                	 	
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                	 		
                        }
                	
                	
                	if( datare[keyval].pcdiLocTypeId==37){
                	 	removeOption(document.getElementById("input_31") );
                	 	document.getElementById("input_31").options.add(anOption);
                	 	
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                	 		getCluster();
                        }
                	
                	if( datare[keyval].pcdiLocTypeId==38){
                	 	removeOption(document.getElementById("input_33") );
                	 	document.getElementById("input_33").options.add(anOption);
                	 	
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                	 		getThana();
                        }
                	
                	
                	if( datare[keyval].pcdiLocTypeId==45){
                	 	removeOption(document.getElementById("input_33") );
                	 	document.getElementById("input_33").options.add(anOption);
                	 	
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                	 		getThana();
                        }
                	
                	
                	
                	
                	if( datare[keyval].pcdiLocTypeId==33){
                	 	removeOption(document.getElementById("input_c") );
                	 	document.getElementById("input_c").options.add(anOption);
                	 	
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                	 		
                	 	
                        }
                	if( datare[keyval].pcdiLocTypeId==21){
                	 	removeOption(document.getElementById("input_DH") );
                	 	document.getElementById("input_DH").options.add(anOption);
                	 	
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                	 		
                	 	
                        }
                	if( datare[keyval].pcdiLocTypeId==22){
                	 	removeOption(document.getElementById("input_DCHC") );
                	 	document.getElementById("input_DCHC").options.add(anOption);
                	 	
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                	 		
                	 	
                        }
                	if( datare[keyval].pcdiLocTypeId==23){
                	 	removeOption(document.getElementById("input_DPHC") );
                	 	document.getElementById("input_DPHC").options.add(anOption);
                	 	
                	 		if(sessionValue=='hi'){
                            anOption.text = datare[keyval].pcdvLocationNameLocal;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }else{
                            anOption.text = datare[keyval].pcdvLocationNameE;
                            anOption.value = datare[keyval].pcdiLocationId;
                            }
                	 		
                	 	
                        }
                	  }
                    }
    		  }
		
		function preOfficeType(){
				var officeTypeId = document.getElementById("locnTypeId").value;
				removeOption(document.getElementById("input_1"));
				SpeLocnTypeService.findByProperty("pcdiLocTypeId",parseInt(officeTypeId),{callback : handleReceivedOfficeTypeData});
		}
		
		function handleReceivedOfficeTypeData(data){
            for(var key in data){
         	   var anOption = document.createElement("OPTION");
         	   //removeOptions(document.getElementById("input_111"));
         	   document.getElementById("input_1").options.add(anOption);
                if(sessionValue=="hi"){
                    anOption.text = data[key].pcdvLocTypeLocalLang;
                    anOption.value = data[key].pcdiLocTypeId;
                    }
                    else{ 
     	            anOption.text = data[key].pcdvLocType;
                    anOption.value = data[key].pcdiLocTypeId;
                    }
                   }
            }
		
		function preUnchkOfficeType(){
			var serviceId= document.getElementById("serviceId").value;
			SpeServiceLocnTypeMapperService.findByProperty("pcdiServiceId",parseInt(serviceId),{callback : handleReceivedUnchkOfficeTypeData});
	}
	
	function handleReceivedUnchkOfficeTypeData(data){
		 for(var key in data){
			 var opt = '<option value="0">-----------<spring:message code="label.Select"/>----------</option>';
		 	    $('select#input_1').html(opt);
         	   var pcdiLocTypeId = data[key].speLocnType.pcdiLocTypeId;
         	   //removeOption(document.getElementById("input_1"));
         	   SpeLocnTypeService.findByProperty("pcdiLocTypeId",parseInt(pcdiLocTypeId),{callback : handleReceivedUnchkOfficeTypeNameData});
                   }
			}
	function handleReceivedUnchkOfficeTypeNameData(data){
		var dataSort = data.sort(function(a,b){return a - b});
		for(var key in data){
			var anOption = document.createElement("OPTION");
         	document.getElementById("input_1").options.add(anOption);
                if(sessionValue=="hi"){
                    anOption.text = dataSort[key].pcdvLocTypeLocalLang;
                    anOption.value = dataSort[key].pcdiLocTypeId;
                    
                    var district = document.getElementById('input_111').value;
                    var serviceID = document.getElementById("serviceId").value;
                    
                    
                   /*  if(district!=13 && serviceID==18){
                    	$("#input_1 option[value=12]").remove();
                         } */
                    
                    if(!(district==13 || district==25) && serviceID==18){
                    	$("#input_1 option[value=12]").remove();
                         }
                    
                    
                    }
                    else{ 
     	            anOption.text = dataSort[key].pcdvLocType;
                    anOption.value = dataSort[key].pcdiLocTypeId;
                    }
                }	
	       }
		
       $(function(){
	      $('#lastOfc').click(function ()
	    		  {
	    	    if(this.checked) {
	    	    	populatelastSelectedLocnData();
	    	    	preOfficeType();
	      		}else{
	      			preUnchkDistrictData();
	      			preUnchkOfficeType();
	      		} 
	      });
      }); 
       
       $(function(){
 	      $('#editOfc').click(function ()
 	    		  {
 	    	    if(this.checked) {
 	    	    	populatelastSelectedLocnData();
 	    	    	preOfficeType();
 	      		}else{
 	      			preUnchkDistrictData();
 	      			preUnchkOfficeType();
 	      		} 
 	      });
       }); 
       
       function preUnchkDistrictData(){
    	   var distTypeId = 1;
    	   removeOptions(document.getElementById("input_111"));
    	   PaceLocationMasterDataService.findByProperty("pcdiLocTypeId",parseInt(distTypeId),{callback : handleReceivedUnchkDistData}); 
    	   
 			}
       function handleReceivedUnchkDistData(data){
               
    	   var opt = '<option value="0">-----------<spring:message code="label.Select"/>----------</option>';
    	   $('select#input_111').html(opt);
    	   for(var key in data){
            	   var anOption = document.createElement("OPTION");
            	   //removeOptions(document.getElementById("input_111"));
            	   document.getElementById("input_111").options.add(anOption);
                   if(sessionValue=="hi"){
                       anOption.text = data[key].pcdvLocationNameLocal;
                       }
                       else 
        	           anOption.text = data[key].pcdvLocationNameE;
                       anOption.value = data[key].pcdiLocationId;
                      }
               /* var opt = '<option value="0">-----------<spring:message code="label.Select"/>----------</option>';
        	   //$('select#input_111').html(opt1); */
                $('select#input_10').html(opt);
   				$('select#input_17').html(opt);
   				$('select#input_13').html(opt);
   				$('select#input_14').html(opt);
   				$('select#input_2').html(opt);
   				$('select#input_3').html(opt);
   				$('select#input_4').html(opt);
   				$('select#input_5').html(opt);
   				$('select#input_6').html(opt);
   				$('select#input_7').html(opt);
   				$('select#input_20').html(opt);
   				$('select#input_11').html(opt);
   				$('select#input_19').html(opt);
   				$('select#input_9').html(opt);
   				$('select#input_12').html(opt);
   				$('select#DistCollectorate').html(opt);
   				$('select#RTO').html(opt);
   			// For New Location
   				$('select#HQ').html(opt);
   				$('select#College').html(opt);
   				$('select#university').html(opt);
   				$('select#input_c').html(opt);
   				$('select#input_31').html(opt);
   				$('select#input_33').html(opt);
   				$('select#input_34').html(opt);
   				$('select#input_35').html(opt);
   				$('select#input_36').html(opt);
   				$('select#input_37').html(opt);
   				$('select#input_42').html(opt);
   				//District Hospital, Health Center
   				$('select#input_DH').html(opt);
   				$('select#input_DCHC').html(opt);
   				$('select#input_DPHC').html(opt);
   				
               }
       
       
       
    function beneficiaryAutoComplete(){
		var chkBoxValue=document.getElementById("chk").checked;
		if(chkBoxValue==true){
			var ApplicantName=document.getElementById("input_44").value;
			document.getElementById("input_77").value=ApplicantName;

			document.getElementById("input_77").disabled=false;

			}
		else if(chkBoxValue==false){
        	document.getElementById("input_77").value='';
        	document.getElementById("input_77").disabled=false;
        	document.getElementById("input_77").readOnly =false;
            }
	}
    
    function isNumberKey(evt){
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }    

    function hideLocDiv(){
    	if(document.getElementById("editOfc").checked == false){
    		document.getElementById("myDiv1").style.display="none";
    		document.getElementById("myDiv2").style.display="none";
    		document.getElementById("myDiv6").style.display="none";
    		document.getElementById("myDiv9").style.display="none";
    		document.getElementById("myDiv5").style.display="none";
    		document.getElementById("myDiv7").style.display="none";
    		document.getElementById("myDiv8").style.display="none";
    		document.getElementById("myDiv10").style.display="none"; 
    		document.getElementById("myDiv11").style.display="none";
    		document.getElementById("myDiv12").style.display="none";
    		document.getElementById("myDiv13").style.display="none";
    		document.getElementById("myDiv14").style.display="none";
    		document.getElementById("myDiv15").style.display="none";
    		document.getElementById("myDiv16").style.display="none";
    		document.getElementById("officeTypeDiv").style.display="none";
    		document.getElementById("districtHospital").style.display="none";
    		document.getElementById("districtCentralHealthCenter").style.display="none";
    		document.getElementById("districtPrimaryHealthCenter").style.display="none";
    		}
       }
    
    
    
   

    /* function isNumberKey(evt){
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
        	//alert("<spring:message code='label.pleaseEnterSqlQuery' />");
            return false;
        return true;
    }    */ 
    function showDivForCheck(){
  	  if(document.getElementById('locnTypeId').value==6 || document.getElementById('locnTypeId').value==11){
  			document.getElementById("myDiv1").style.display="block";
  			document.getElementById("myDiv2").style.display="none";
  			document.getElementById("myDiv6").style.display="none";
  			document.getElementById("myDiv9").style.display="none";
  			document.getElementById("myDiv5").style.display="none";
  			document.getElementById("myDiv7").style.display="none";
  			document.getElementById("myDiv8").style.display="none";
  			document.getElementById("myDiv10").style.display="none";
  			document.getElementById("myDiv11").style.display="none";
  			document.getElementById("myDiv12").style.display="none";
  			document.getElementById("myDiv13").style.display="none";
  			document.getElementById("myDiv14").style.display="none";
  			document.getElementById("myDiv15").style.display="none";
  			document.getElementById("myDiv16").style.display="none";
  			document.getElementById("officeTypeDiv").style.display="block";
  			document.getElementById("districtHospital").style.display="none";
  			document.getElementById("districtCentralHealthCenter").style.display="none";
  			document.getElementById("districtPrimaryHealthCenter").style.display="none";
  			}
  		else if(document.getElementById('locnTypeId').value==7 || document.getElementById('locnTypeId').value==12 ||document.getElementById('locnTypeId').value==15 || document.getElementById('input_1').value==17){
  			document.getElementById("myDiv1").style.display="none";
  			document.getElementById("myDiv2").style.display="block";
  			document.getElementById("myDiv6").style.display="none";
  			document.getElementById("myDiv9").style.display="none";
  			document.getElementById("myDiv5").style.display="none";
  			document.getElementById("myDiv7").style.display="none";
  			document.getElementById("myDiv8").style.display="none";
  			document.getElementById("myDiv12").style.display="none";
  			document.getElementById("myDiv11").style.display="none";
  			document.getElementById("myDiv13").style.display="none";
  			document.getElementById("myDiv14").style.display="none";
  			document.getElementById("myDiv15").style.display="none";
  			document.getElementById("myDiv16").style.display="none";
  			document.getElementById("officeTypeDiv").style.display="block";
  			document.getElementById("districtHospital").style.display="none";
  			document.getElementById("districtCentralHealthCenter").style.display="none";
  			document.getElementById("districtPrimaryHealthCenter").style.display="none";
  			}
  		else if(document.getElementById('locnTypeId').value==8 || document.getElementById('locnTypeId').value==18){
  			document.getElementById("myDiv1").style.display="none";
  			document.getElementById("myDiv2").style.display="none";
  			document.getElementById("myDiv6").style.display="block";
  			document.getElementById("myDiv9").style.display="none";
  			document.getElementById("myDiv5").style.display="none";
  			document.getElementById("myDiv7").style.display="none";
  			document.getElementById("myDiv8").style.display="none";
  			document.getElementById("myDiv11").style.display="none";
  			document.getElementById("myDiv12").style.display="none";
  			
  			document.getElementById("myDiv13").style.display="none";
  			document.getElementById("myDiv14").style.display="none";
  			document.getElementById("myDiv15").style.display="none";
  			document.getElementById("myDiv16").style.display="none";
  			document.getElementById("officeTypeDiv").style.display="block";
  			document.getElementById("districtHospital").style.display="none";
  			document.getElementById("districtCentralHealthCenter").style.display="none";
  			document.getElementById("districtPrimaryHealthCenter").style.display="none";
  			}
  		else if(document.getElementById('locnTypeId').value==9 || document.getElementById('locnTypeId').value==13 ||document.getElementById('locnTypeId').value==19){
  			document.getElementById("myDiv1").style.display="none";
  			document.getElementById("myDiv2").style.display="none";
  			document.getElementById("myDiv6").style.display="none";
  			document.getElementById("myDiv9").style.display="block";
  			document.getElementById("myDiv5").style.display="none";
  			document.getElementById("myDiv7").style.display="none";
  			document.getElementById("myDiv8").style.display="none";
  			document.getElementById("myDiv11").style.display="none";
  			document.getElementById("myDiv12").style.display="none";
  			document.getElementById("myDiv13").style.display="none";
  			document.getElementById("myDiv14").style.display="none";
  			document.getElementById("myDiv15").style.display="none";
  			document.getElementById("myDiv16").style.display="none";
  			document.getElementById("officeTypeDiv").style.display="block";
  			document.getElementById("districtHospital").style.display="none";
  			document.getElementById("districtCentralHealthCenter").style.display="none";
  			document.getElementById("districtPrimaryHealthCenter").style.display="none";
  			}
  		else if(document.getElementById('locnTypeId').value==10 || document.getElementById('locnTypeId').value==14 ||document.getElementById('locnTypeId').value==16 ||document.getElementById('locnTypeId').value==20){
  			document.getElementById("myDiv1").style.display="none";
  			document.getElementById("myDiv2").style.display="none";
  			document.getElementById("myDiv6").style.display="none";
  			document.getElementById("myDiv9").style.display="none";
  			document.getElementById("myDiv5").style.display="block";
  			document.getElementById("myDiv7").style.display="none";
  			document.getElementById("myDiv8").style.display="none";
  			document.getElementById("myDiv11").style.display="none";
  			document.getElementById("myDiv12").style.display="none";
  			document.getElementById("myDiv13").style.display="none";
  			document.getElementById("myDiv14").style.display="none";
  			document.getElementById("myDiv15").style.display="none";
  			document.getElementById("myDiv16").style.display="none";
  			document.getElementById("officeTypeDiv").style.display="block";
  			document.getElementById("districtHospital").style.display="none";
  			document.getElementById("districtCentralHealthCenter").style.display="none";
  			document.getElementById("districtPrimaryHealthCenter").style.display="none";
  			}
  		else if(document.getElementById('locnTypeId').value==25){
  			document.getElementById("myDiv1").style.display="none";
  			document.getElementById("myDiv2").style.display="none";
  			document.getElementById("myDiv6").style.display="none";
  			document.getElementById("myDiv9").style.display="none";
  			document.getElementById("myDiv5").style.display="none";
  			document.getElementById("myDiv7").style.display="block";
  			document.getElementById("myDiv8").style.display="none";
  			document.getElementById("myDiv11").style.display="none";
  			document.getElementById("myDiv12").style.display="none";
  			document.getElementById("myDiv13").style.display="none";
  			document.getElementById("myDiv14").style.display="none";
  			document.getElementById("myDiv15").style.display="none";
  			document.getElementById("myDiv16").style.display="none";
  			document.getElementById("officeTypeDiv").style.display="block";
  			document.getElementById("districtHospital").style.display="none";
  			document.getElementById("districtCentralHealthCenter").style.display="none";
  			document.getElementById("districtPrimaryHealthCenter").style.display="none";
  			}
  		else if(document.getElementById('locnTypeId').value==27){
  			document.getElementById("myDiv1").style.display="none";
  			document.getElementById("myDiv2").style.display="none";
  			document.getElementById("myDiv6").style.display="none";
  			document.getElementById("myDiv9").style.display="none";
  			document.getElementById("myDiv5").style.display="none";
  			document.getElementById("myDiv7").style.display="none";
  			document.getElementById("myDiv8").style.display="block";
  			document.getElementById("myDiv11").style.display="none";
  			document.getElementById("myDiv12").style.display="none";
  			document.getElementById("myDiv13").style.display="none";
  			document.getElementById("myDiv14").style.display="none";
  			document.getElementById("myDiv15").style.display="none";
  			document.getElementById("myDiv16").style.display="none";
  			document.getElementById("officeTypeDiv").style.display="block";
  			document.getElementById("districtHospital").style.display="none";
  			document.getElementById("districtCentralHealthCenter").style.display="none";
  			document.getElementById("districtPrimaryHealthCenter").style.display="none";
  			}
  	  
  	//For New Location
		else if(document.getElementById('locnTypeId').value==31 ){
			document.getElementById("myDiv1").style.display="none";
			document.getElementById("myDiv2").style.display="none";
			document.getElementById("myDiv6").style.display="none";
			document.getElementById("myDiv9").style.display="none";
			document.getElementById("myDiv5").style.display="none";
			document.getElementById("myDiv7").style.display="none";
			document.getElementById("myDiv8").style.display="none";
			document.getElementById("myDiv11").style.display="none";
			document.getElementById("myDiv12").style.display="none";
			document.getElementById("myDiv14").style.display="none";
			document.getElementById("myDiv10").style.display="block";
			document.getElementById("officeTypeDiv").style.display="block";
			document.getElementById("districtHospital").style.display="none";
			document.getElementById("districtCentralHealthCenter").style.display="none";
			document.getElementById("districtPrimaryHealthCenter").style.display="none";
			}
  	  
  	  
		else if(document.getElementById('locnTypeId').value==32 ){
			
			
			document.getElementById("myDiv1").style.display="none";
			document.getElementById("myDiv2").style.display="none";
			document.getElementById("myDiv6").style.display="none";
			document.getElementById("myDiv9").style.display="none";
			document.getElementById("myDiv5").style.display="none";
			document.getElementById("myDiv7").style.display="none";
			document.getElementById("myDiv8").style.display="none";
			document.getElementById("myDiv10").style.display="none";
			document.getElementById("myDiv12").style.display="none";
			document.getElementById("myDiv14").style.display="none";
			document.getElementById("myDiv11").style.display="block";
			document.getElementById("officeTypeDiv").style.display="block";
			document.getElementById("districtHospital").style.display="none";
			document.getElementById("districtCentralHealthCenter").style.display="none";
			document.getElementById("districtPrimaryHealthCenter").style.display="none";
			}
  	  
  	  
	else if(document.getElementById('locnTypeId').value==36 ){
			
			
			document.getElementById("myDiv1").style.display="none";
			document.getElementById("myDiv2").style.display="none";
			document.getElementById("myDiv6").style.display="none";
			document.getElementById("myDiv9").style.display="none";
			document.getElementById("myDiv5").style.display="none";
			document.getElementById("myDiv7").style.display="none";
			document.getElementById("myDiv8").style.display="none";
			document.getElementById("myDiv10").style.display="none";
			document.getElementById("myDiv11").style.display="none";
			document.getElementById("myDiv12").style.display="block";
			document.getElementById("myDiv13").style.display="none";
			document.getElementById("myDiv14").style.display="none";
			document.getElementById("myDiv15").style.display="none";
			document.getElementById("myDiv16").style.display="none";
			
			document.getElementById("officeTypeDiv").style.display="block";
			document.getElementById("districtHospital").style.display="none";
			document.getElementById("districtCentralHealthCenter").style.display="none";
			document.getElementById("districtPrimaryHealthCenter").style.display="none";
			}
  	  
  	  
	else if(document.getElementById('locnTypeId').value==37 || document.getElementById('locnTypeId').value==44){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv10").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("myDiv13").style.display="block";
		document.getElementById("officeTypeDiv").style.display="block";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		
		
		}
  	  
  	  
	else if(document.getElementById('locnTypeId').value==38 || document.getElementById('locnTypeId').value==45 ){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv10").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("myDiv14").style.display="block";
		document.getElementById("officeTypeDiv").style.display="block";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
	
		
		
		}
  	  
	else if(document.getElementById('locnTypeId').value==39){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv10").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("myDiv15").style.display="block";
		document.getElementById("officeTypeDiv").style.display="block";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		
		
		}
  	  
  	  
	else if(document.getElementById('locnTypeId').value==40){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv10").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="block";
		document.getElementById("officeTypeDiv").style.display="block";
		document.getElementById("districtHospital").style.display="none";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		}
	else if(document.getElementById('locnTypeId').value==21){
		document.getElementById("myDiv1").style.display="none";
		document.getElementById("myDiv2").style.display="none";
		document.getElementById("myDiv6").style.display="none";
		document.getElementById("myDiv9").style.display="none";
		document.getElementById("myDiv5").style.display="none";
		document.getElementById("myDiv7").style.display="none";
		document.getElementById("myDiv8").style.display="none";
		document.getElementById("myDiv10").style.display="none";
		document.getElementById("myDiv11").style.display="none";
		document.getElementById("myDiv12").style.display="none";
		document.getElementById("myDiv13").style.display="none";
		document.getElementById("myDiv14").style.display="none";
		document.getElementById("myDiv15").style.display="none";
		document.getElementById("myDiv16").style.display="none";
		document.getElementById("officeTypeDiv").style.display="block";
		document.getElementById("districtHospital").style.display="block";
		document.getElementById("districtCentralHealthCenter").style.display="none";
		document.getElementById("districtPrimaryHealthCenter").style.display="none";
		}
		else if(document.getElementById('locnTypeId').value==22){
			document.getElementById("myDiv1").style.display="none";
			document.getElementById("myDiv2").style.display="none";
			document.getElementById("myDiv6").style.display="none";
			document.getElementById("myDiv9").style.display="none";
			document.getElementById("myDiv5").style.display="none";
			document.getElementById("myDiv7").style.display="none";
			document.getElementById("myDiv8").style.display="none";
			document.getElementById("myDiv10").style.display="none";
			document.getElementById("myDiv11").style.display="none";
			document.getElementById("myDiv12").style.display="none";
			document.getElementById("myDiv13").style.display="none";
			document.getElementById("myDiv14").style.display="none";
			document.getElementById("myDiv15").style.display="none";
			document.getElementById("myDiv16").style.display="none";
			document.getElementById("officeTypeDiv").style.display="block";
			document.getElementById("districtHospital").style.display="none";
			document.getElementById("districtCentralHealthCenter").style.display="block";
			document.getElementById("districtPrimaryHealthCenter").style.display="none";
			}
		else if(document.getElementById('locnTypeId').value==23){
			document.getElementById("myDiv1").style.display="none";
			document.getElementById("myDiv2").style.display="none";
			document.getElementById("myDiv6").style.display="none";
			document.getElementById("myDiv9").style.display="none";
			document.getElementById("myDiv5").style.display="none";
			document.getElementById("myDiv7").style.display="none";
			document.getElementById("myDiv8").style.display="none";
			document.getElementById("myDiv10").style.display="none";
			document.getElementById("myDiv11").style.display="none";
			document.getElementById("myDiv12").style.display="none";
			document.getElementById("myDiv13").style.display="none";
			document.getElementById("myDiv14").style.display="none";
			document.getElementById("myDiv15").style.display="none";
			document.getElementById("myDiv16").style.display="none";
			document.getElementById("officeTypeDiv").style.display="block";
			document.getElementById("districtHospital").style.display="none";
			document.getElementById("districtCentralHealthCenter").style.display="none";
			document.getElementById("districtPrimaryHealthCenter").style.display="block";
			}
  	  
  	  
    } 

	//---------------------------validation----------------------------

	//---------------------------validation------------------
    function fieldValid(){
		//alert("he");
	    var result = 0;
		var nameOfApplicant = $('#input_44').val();
		if(nameOfApplicant.substring(0, 1)==' '|| (nameOfApplicant.trim()== '')){
			$('#lable_44').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredApplicantName"/></font>");
			result++;
		}else{
			$('#lable_44').html("");
		} 
		var nameOfBeneficicary = $('#input_77').val();
		if(((nameOfBeneficicary + '').substring(0, 1)==' ')|| (nameOfBeneficicary.trim()== '')){
			$('#lable_77').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredBeneficiaryName"/></font>");
			result++;
		}else{
			$('#lable_77').html("");
		}
		var applicantAddr=$('#input_8').val();
		if(applicantAddr.substring(0, 1)==' ' || (applicantAddr.trim()== '')){
			$('#lable_8').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredAddressApplicant"/></font>");
			result++;
		}
		else{
			$('#lable_8').html("");
		}
		
		var mobNo = document.MetaData.eng_mobileNo;
    	//alert(mobNo.value);
    	var phonenos = /^([6-9][0-9]{9})$/;
    	var phonenosDigitLessThan = /^([0-6][0-9]{9})$/;
    	if(mobNo.value.length>0){
    	if(mobNo.value.match(phonenos))  
    	{  
        $('#lable_mobNoDigit').html('');
        $('#lable_mobNo1StDigit').html('');
    	
    	}else  
    	{  
			if(mobNo.value.match(phonenosDigitLessThan)){   		
    		
    		$('#lable_mobNo1StDigit').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.MobileNoStart"/></font>");
    		mobNo.focus();
    		mobNo.value=document.getElementById("eng_mobileNo").value.substr(0, 10);;
    		result ++;  
    		} 
				else{
				$('#lable_mobNoDigit').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.MobileNoDigit"/></font>");
	    		mobNo.focus();
	    		mobNo.value=document.getElementById("eng_mobileNo").value.substr(0, 10);;
	    		result ++; 
					}
				} 
    		}
		
		var mobNo = $('#eng_mobileNo').val();
		if(mobNo == ''){
			$('#lable_mobNo').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredMobileNo"/></font>");
			result++;
		}else{
			$('#lable_mobNo').html("");
		}
		var mobNo = $('#eng_emailId').val();
		if(mobNo == ''){
			$('#lable_emailId').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredEmailId"/></font>");
			result++;
		}else{
			$('#lable_emailId').html("");
		}
		var status=document.getElementById("status").value;
		 var correctionStatus=document.getElementById("correctionStatus").value;
		if(status!='S' && correctionStatus!='C' && correctionStatus!='NC'){
		if(document.getElementById("input_111").value=='' || document.getElementById("input_111").value==0){
			
			$('#lable_distId').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredDistName"/></font>");
			result++;
		}else{
			$('#lable_distId').html('');
		}
        if(document.getElementById("input_1").value=='' || document.getElementById("input_1").value==0){
			
			$('#lable_input_1').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredOfficeType"/></font>");
			result++;
		}else{
			$('#lable_input_1').html('');
		} 
        
		if(document.getElementById("myDiv5").style.display=="block"){
			    if( document.getElementById("input_10").value=='' || document.getElementById("input_10").value==0){
				   $('#lable_10').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredCorporationName"/></font>");
				   result++;
			       }else{
			    		$('#lable_10').html('');
				     }
			    if( document.getElementById("input_17").value=='' || document.getElementById("input_17").value==0){
			    	      $('#lable_input_17').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredZoneName"/></font>");
			    	      result++;
			    	}else{
			    		$('#lable_input_17').html('');
					 }
			    if( document.getElementById("input_13").value=='' || document.getElementById("input_13").value==0){
		  	            $('#lable_input_13').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredDivisionName"/></font>");
		  	            result++;
		  	        }else{
		  	        	$('#lable_input_13').html('');	
				 }	    	  
			    if(document.getElementById("input_14").value=='' || document.getElementById("input_14").value==0){
					    $('#lable_input_14').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredWardName"/></font>");
					    result++;
				   }else{
					   $('#lable_input_14').html('');	
				   }	    	  
		}
		if(document.getElementById("myDiv1").style.display=="block"){
			      if(document.getElementById("input_2").value=='' || document.getElementById("input_2").value==0){
			    	  $('#lable_input_2').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredSub-District/Revenue"/></font>");
			    	  result++;
			      }else{
			    	  $('#lable_input_2').html('');
			      }
			      if(document.getElementById("input_3").value=='' || document.getElementById("input_3").value==0){
			    	  $('#lable_input_3').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredRevenueVillage"/></font>");
			    	  result++;
			      }else{
			    	  $('#lable_input_3').html('');
			      }
		}
		if(document.getElementById("myDiv2").style.display=="block"){
			 if(document.getElementById("input_4").value=='' || document.getElementById("input_4").value==0){
					 $('#lable_input_4').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredDistrict/ZillaPanchayat"/></font>");
					 result++;
				 }else{
					 $('#lable_input_4').html('');
				 }
				 if(document.getElementById("input_5").value=='' || document.getElementById("input_5").value==0){
					 $('#lable_input_5').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredBlockPanchayat"/></font>");
					 result++;
				 }else{
					 $('#lable_input_5').html('');
				 }
				 if(document.getElementById("input_6").value=='' || document.getElementById("input_6").value==0){
					 $('#lable_input_6').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredVillage/GramPanchayat"/></font>");
					 result++;
				 }else{
					 $('#lable_input_6').html('');
				 }
			     if(document.getElementById("input_7").value=='' || document.getElementById("input_7").value==0){
			    	 $('#lable_input_7').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredWardName"/></font>");
			    	 result++;
				   }else{
				     $('#lable_input_7').html('');
				   }
           } 
		   if(document.getElementById("myDiv6").style.display=="block"){
			   if(document.getElementById("input_20").value=='' || document.getElementById("input_20").value==0){
					 $('#lable_input_20').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredNagarPanchayat"/></font>");
					 result++;
				 }else{
					 $('#lable_input_20').html('');
				 }
				 if(document.getElementById("input_11").value=='' || document.getElementById("input_11").value==0){
					 $('#lable_input_11').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredWardName"/></font>");
					 result++;
				 }else{
					 $('#lable_input_11').html('');
				 }
		   }		 
		   if(document.getElementById("myDiv9").style.display=="block"){
			   if(document.getElementById("input_19").value=='' || document.getElementById("input_19").value==0){
				   $('#lable_input_19').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredMuncipalityName"/></font>");
				   result++;
			   }else{
				   $('#lable_input_19').html('');
				 }
			   if(document.getElementById("input_9").value=='' || document.getElementById("input_9").value==0){
				   $('#lable_input_9').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredDivisionName"/></font>");
				   result++;
			   }else{
				   $('#lable_input_9').html('');
				 }
			   if(document.getElementById("input_12").value=='' || document.getElementById("input_12").value==0){
				   $('#lable_input_12').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredWardName"/></font>");
				   result++;
			   }else{
				   $('#lable_input_12').html('');
				 }
			}
		   if(document.getElementById("myDiv7").style.display=="block"){
			   if(document.getElementById("DistCollectorate").value=='' || document.getElementById("DistCollectorate").value==0){
					 $('#lable_DistCollectorate').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredDistCollectorate"/></font>");
					 result++;
				 }else{
					 $('#lable_DistCollectorate').html('');
				 }
		   }
		   if(document.getElementById("myDiv8").style.display=="block"){
			   if(document.getElementById("RTO").value=='' || document.getElementById("RTO").value==0){
					 $('#lable_RTO').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredRTO"/></font>");
					 result++;
				 }else{
					 $('#lable_RTO').html('');
				 }
		   }
		   
		// For New Location
		   if(document.getElementById("myDiv10").style.display=="block"){
			   if(document.getElementById("HQ").value=='' || document.getElementById("HQ").value==0){
					 $('#lable_HQ').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
					 result++;
				 }else{
					 $('#lable_HQ').html('');
				 }
		   }
		
		
		
		   if(document.getElementById("myDiv11").style.display=="block"){
			   if(document.getElementById("College").value=='' || document.getElementById("College").value==0){
					 $('#lable_College').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
					 result++;
				 }else{
					 $('#lable_College').html('');
				 }
		   }
		   
		   if(document.getElementById("myDiv12").style.display=="block"){
			   if(document.getElementById("university").value=='' || document.getElementById("university").value==0){
					 $('#lable_university').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
					 result++;
				 }else{
					 $('#lable_university').html('');
				 }
		   }
		   
		   
		   
		   //for new locations
		   
		   if(document.getElementById("myDiv13").style.display=="block"){
			   if(document.getElementById("input_31").value=='' || document.getElementById("input_31").value==0){
				   $('#lable_input_31').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
				   result++;
			   }else{
				   $('#lable_input_31').html('');
				 }
			   if(document.getElementById("input_32").value=='' || document.getElementById("input_32").value==0){
				   $('#lable_input_32').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
				   result++;
			   }else{
				   $('#lable_input_32').html('');
				 }
			   
			}
		   
		   
		   
		   if(document.getElementById("myDiv14").style.display=="block"){
			   if(document.getElementById("input_33").value=='' || document.getElementById("input_33").value==0){
				   $('#lable_input_33').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
				   result++;
			   }else{
				   $('#lable_input_33').html('');
				 }
			   if(document.getElementById("input_34").value=='' || document.getElementById("input_34").value==0){
				   $('#lable_input_34').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
				   result++;
			   }else{
				   $('#lable_input_34').html('');
				 }
			   
			}
		   
		   
		   
		   if(document.getElementById("myDiv15").style.display=="block"){
			   if(document.getElementById("input_35").value=='' || document.getElementById("input_35").value==0){
					 $('#lable_input_35').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
					 result++;
				 }else{
					 $('#lable_input_35').html('');
				 }
		   }
		   
		   
		   if(document.getElementById("myDiv16").style.display=="block"){
			   if(document.getElementById("input_36").value=='' || document.getElementById("input_36").value==0){
					 $('#lable_input_36').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
					 result++;
				 }else{
					 $('#lable_input_36').html('');
				 }
		   }
		   
		   if(document.getElementById("districtHospital").style.display=="block"){
			   if(document.getElementById("input_DH").value=='' || document.getElementById("input_DH").value==0){
					 $('#lable_input_DH').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
					 result++;
				 }else{
					 $('#lable_input_DH').html('');
				 }
		   }
		   if(document.getElementById("districtCentralHealthCenter").style.display=="block"){
			   if(document.getElementById("input_DCHC").value=='' || document.getElementById("input_DCHC").value==0){
					 $('#lable_input_DCHC').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
					 result++;
				 }else{
					 $('#lable_input_DCHC').html('');
				 }
		   }
		   if(document.getElementById("districtPrimaryHealthCenter").style.display=="block"){
			   if(document.getElementById("input_DPHC").value=='' || document.getElementById("input_DPHC").value==0){
					 $('#lable_input_DPHC').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.requiredHQ"/></font>");
					 result++;
				 }else{
					 $('#lable_input_DPHC').html('');
				 }
		   }
		   
		   
		}
		   return result;
		
	}
    function clicked() {
		  /*   var sessionVal=document.getElementById("hiddenSession").value;
		    if(sessionVal=='hi'){
            if (confirm('क्या आप जमा करना चाहते है?')) {
        	//submitForm();
        	 document.MetaData.method="POST";
        	 document.MetaData.action="serviceMetaDataEdit.do?<csrf:token uri='serviceMetaDataEdit.do'/>";
     	     document.MetaData.submit();
        } else {
            return false;
        }
		}else{
			if (confirm('Do You Want To Submit ?')) {
	        	//submitForm();
	        	 document.MetaData.method="POST";
	        	 document.MetaData.action="serviceMetaDataEdit.do?<csrf:token uri='serviceMetaDataEdit.do'/>";
	     	     document.MetaData.submit();
	        } else {
	            return false;
	        }
		} */
		
		document.getElementById("sub_id").disabled = true;
    	 document.MetaData.method="POST";
    	 document.MetaData.action="serviceMetaDataEdit.do?<csrf:token uri='serviceMetaDataEdit.do'/>";
 	     document.MetaData.submit();
		
		
     }
	function submitForm(){
	   //alert("result::");
		formValidate('input_44');
		formValidate('input_77');
		formValidate('input_8');
	   document.MetaData.method="POST";
	   document.MetaData.action="serviceMetaDataEdit.do?<csrf:token uri='serviceMetaDataEdit.do'/>";
	   var result = fieldValid();
	     if(result == 0)
	    	//document.MetaData.submit(); 
	    	 clicked();
	   }
	
	function selectDistName(){
	// alert("HI");
		if(document.getElementById("input_111").value!='' || document.getElementById("input_111").value!=0){
			document.getElementById("officeTypeDiv").style.display="block";
			document.getElementById("myDiv1").style.display="none";
			document.getElementById("myDiv2").style.display="none";
			document.getElementById("myDiv6").style.display="none";
			document.getElementById("myDiv9").style.display="none";
			document.getElementById("myDiv5").style.display="none";
			
			document.getElementById("districtHospital").style.display="none";

			document.getElementById("districtCentralHealthCenter").style.display="none";

			document.getElementById("districtPrimaryHealthCenter").style.display="none";

			//document.getElementById("myDiv15").style.display="none";
			/* document.getElementById("myDiv14").style.display="none";
			document.getElementById("myDiv15").style.display="none";
			
			document.getElementById("myDiv13").style.display="none"; */
			preUnchkOfficeType();
			var opt = '<option value="0">-----------<spring:message code="label.Select"/>----------</option>';
			$('select#input_10').html(opt);
			$('select#input_17').html(opt);
			$('select#input_13').html(opt);
			$('select#input_14').html(opt);
			$('select#input_2').html(opt);
			$('select#input_3').html(opt);
			$('select#input_4').html(opt);
			$('select#input_5').html(opt);
			$('select#input_6').html(opt);
			$('select#input_7').html(opt);
			$('select#input_20').html(opt);
			$('select#input_11').html(opt);
			$('select#input_19').html(opt);
			$('select#input_9').html(opt);
			$('select#input_12').html(opt);
			$('select#DistCollectorate').html(opt);
			$('select#RTO').html(opt);
			$('select#HQ').html(opt);
			$('select#College').html(opt);
			$('select#university').html(opt);
			$('select#input_c').html(opt);
			$('select#input_31').html(opt);
			$('select#input_33').html(opt);
			$('select#input_36').html(opt);
			/* $('select#input_35').html(opt);
			$('select#input_36').html(opt); */
			
			$('select#input_DH').html(opt);
			$('select#input_DCHC').html(opt);
			$('select#input_DPHC').html(opt);
			
			
		}else{
			document.getElementById("officeTypeDiv").style.display="none";
		}
	} 
	
	
	function maxSize(maxLength,textBox) { 
		if (document.getElementById(textBox).value.length > maxLength) {
	         if(textBox=='input_44')
	        	 $('#lable_applicantName').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.Max50CharAllow"/></font>");
	         if(textBox=='input_77')
	        	 $('#lable_beneficiaryName').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.Max50CharAllow"/></font>");
	         if(textBox=='input_8')
	        	 $('#lable_applicantAddr').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.Max150CharAllow"/></font>");
	         if(textBox=='eng_emailId')
	        	 $('#lable_emailIdLimit').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.Max150CharAllow"/></font>");
	        //document.getElementById(textBox).value='';
	       // textBox.value = textBox.value.substr(0, maxLength);
	        document.getElementById(textBox).value=document.getElementById(textBox).value.substr(0, maxLength);
	    }else{
	    	$('#lable_applicantName').html('');
	    	$('#lable_beneficiaryName').html('');
	    	$('#lable_applicantAddr').html('');
			$('#lable_emailIdLimit').html('');
	    }
	}
    
	/* function refreshForm(){
		alert("HIDI");
		   document.MetaData.method="GET";
		   document.MetaData.action="servicemetadata.do?<csrf:token uri='servicemetadata.do'/>";
		   
		   } */
	function refreshForm(){
		 window.location = "servicemetadata.do?<csrf:token uri='servicemetadata.do'/>&serviceId="+${serviceId};
		 }
	
    
    
     function phonenumber()
	{
    	var mobNo = document.MetaData.eng_mobileNo;
    	//alert(mobNo.value);
    	var phonenos = /^([6-9][0-9]{9})$/;
    	var phonenosDigitLessThan = /^([0-6][0-9]{9})$/;
		if(mobNo.value.length>0){
    	if(mobNo.value.match(phonenos))  
    	{  
        $('#lable_mobNoDigit').html('');
        $('#lable_mobNo1StDigit').html('');
    	return true;  
    	}  
    	else  
    	{  
			if(mobNo.value.match(phonenosDigitLessThan)){   		
    		/* var digit = (''+mobNo.value)[0];
    		alert(digit); */
    		$('#lable_mobNo1StDigit').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.MobileNoStart"/></font>");
    		mobNo.focus();
    		mobNo.value=document.getElementById("eng_mobileNo").value.substr(0, 10);;
    		return false;  
    		} 
				else{
				$('#lable_mobNoDigit').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.MobileNoDigit"/></font>");
	    		mobNo.focus();
	    		mobNo.value=document.getElementById("eng_mobileNo").value.substr(0, 10);;
	    		return false;    
				}
			} 
		  }
		}
     
     function ValidateEmail(mail)   
     {  
		var emailIdLength=MetaData.eng_emailId.value.length;
         if(emailIdLength>0){
      if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(MetaData.eng_emailId.value))  
       { 
    	  $('#lable_emailIdValid').html('');
         return (true);  
       }  
      else{
    	  MetaData.eng_emailId.value ='';
    	  $('#lable_emailIdValid').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.enteredInvalidemailId"/></font>"); 
          return (false);
      		}
         }     
     }
     
     function formValidate(fieldId)
 	{
    	 
     	var uname = document.getElementById(fieldId).value;
     	//document.MetaData.fieldId;
     	var letters = /^[A-Za-z ]+$/; 
     	var lettersHindi = /^[\u0900-\u097F ]+$/;
     	var lettersAlpha = /^[,-.\/\-0-9\u0900-\u097F]+$/;
     	
     	if(uname.length>0){
        if(sessionValue=='hi'){
     	if(uname.match(lettersHindi) && uname.replace(/\s/g, '').length)
     	{
			if(fieldId == 'input_44')     		
     		$('#lable_applicantNameDigit').html('');
			if(fieldId == 'input_77') 
     		$('#lable_beneficiaryNameDigit').html('');
     		return true;  
     	}  
     	else  
     	{  
     		if(fieldId == 'input_44'){
     			$('#lable_applicantNameDigit').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.onlyAplhaAllow"/></font>");
     			//uname.focus();
         		document.getElementById("input_44").value ='';
         		return false;  
     		}
     		
     		if(fieldId == 'input_77'){
     		$('#lable_beneficiaryNameDigit').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.onlyAplhaAllow"/></font>");
     		//uname.focus();
     		document.getElementById("input_77").value ='';
     		return false; 
     		}
     	}
     	
     	
     	
     	if(uname.match(lettersAlpha))  
     	{
			
     		if(fieldId == 'input_8')     		
     		$('#lable_applicantAddr').html('');
			
     		return true;  
     	}  
     	else  
     	{  
     		if(fieldId == 'input_8'){
     			$('#lable_applicantAddr').html("</br><font style='color: red;font-size:10px'><spring:message code="label.onlyAplhaAllow"/></font>");
     			//uname.focus();
         		document.getElementById("input_8").value ='';
         		return false;  
     		}
     		
     		
     		
     		} 
     	
     	
     	
     	
	}  
    if(sessionValue=='en'){
         	if(uname.match(letters) && uname.replace(/\s/g, '').length)  
         	{
    			if(fieldId == 'input_44')     		
         		$('#lable_applicantNameDigit').html('');
    			if(fieldId == 'input_77') 
         		$('#lable_beneficiaryNameDigit').html('');
         		return true;  
         	}  
         	else  
         	{  
         		if(fieldId == 'input_44'){
         			$('#lable_applicantNameDigit').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.onlyAplhaAllow"/></font>");
         			//uname.focus();
             		document.getElementById("input_44").value ='';
             		return false;  
         		}
         		
         		if(fieldId == 'input_77'){
         		$('#lable_beneficiaryNameDigit').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.onlyAplhaAllow"/></font>");
         		//uname.focus();
         		document.getElementById("input_77").value ='';
         		return false; 
         			}
         		}  
         	}
 	} 	
 }  
     function aadharCardNo(){
    	 var aadharNo = document.MetaData.eng_AaddharCardNo;
		 var aNo=document.getElementById("eng_AaddharCardNo").value;
    	 var aadharPatteren = /^\d{12}$/;
		 if(aNo.length>0){
    	 if(aadharNo.value.match(aadharPatteren))  
     	{  
         $('#lable_aadharNoDigit').html('');
     	return true;  
     	}  
     	else  
     	{ 
     		$('#lable_aadharNoDigit').html("</br><font style='color: red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.aadharCardDigit"/></font>");
     		//uname.focus();
     		document.getElementById("eng_AaddharCardNo").value ='';
     		document.getElementById("eng_AaddharCardNo").value=document.getElementById("eng_AaddharCardNo").value.substr(0, 12);
     		return false; 	
     	}
      }
   }
  </script>


</head>



<body onload="openKeyboard();closeKeyboard();initializeControls();keyBoardDiv();">


<ul class="nav nav-tabs" style="background-color: #42A9DC;margin-top:37px">
   <li class="active" style="width:100%;text-align:center"><a href="#" style="font-size: 16px;font-weight: bolder;background-color: #42A9DC;color:white">
   <c:choose>
   	       <c:when test="${status =='C'}">
   	      
		${spdvCorrectionServiceName}
   </c:when>
   	       <c:otherwise>
   				<%=session.getAttribute("serviceName") %>
   </c:otherwise>
   	       </c:choose>
   </a></li>
  
 </ul>

<div id="iPluginControlsIdToEnable" style="display: none"></div>
<div id="keyBoardImageVisibleId" align="right" style="display: none;"><spring:message code="label.keyboards"/> <img style="CURSOR: pointer" onclick="openKeyboard();" height="20pt" alt="Click here for Floating Keyboard" src="resources/images/keyboard.png" width="30pt" title="Click here for Floating Keyboard"/>
<div id="keyBrdPosition" style="top: 193px; right: 331px; visibility:hidden; "></div></div>
<div id="keyBrd" class="dimming" style="visibility: hidden; left: 8px; top: 38px;" align="right"></div>
<form:form id="MetaData" name="MetaData"  method="POST"  action=""  commandName="paceLocationMasterData">
   <input type="hidden" name="<csrf:token-name/>" value="<csrf:token-value uri="servicemetadata.do"/>"/>
   <input type="hidden" id="serviceId" name = "serviceId" path="spdi_service_id" value='${serviceId}'/>
   <input type="hidden" id="serviceRegion" name = "serviceRegion" path="spdi_service_region"  value='${serviceRegion}'/>
   <input type="hidden" id="hiddenSession" name="hiddenSession" value="<%=session.getAttribute("localLang")%>"/>
   <input type="hidden" id="applIdLast" name = "applIdLast" value='${applId}'/>
   <input type="hidden" id="locnTypeName" name = "locnTypeName" value='${locnTypeName}'/>
   <input type="hidden" id="locnTypeId" name = "locnTypeId" value='${locnTypeId}'/>
   <input type="hidden" id="revenueId" name = "revenueId" value='${revenueId}'/>
   <input type="hidden" id="applId" name = "applId" value='${APPID}'/>
    <input type="hidden" id="correctionStatus" name = "correctionStatus" value='${status}'/>
    <input type="hidden" id="spdiCorrectionServiceId" name = "spdiCorrectionServiceId" value='${spdiCorrectionServiceId}'/>
    <input type="hidden" id="spdvCorrectionServiceName" name = "spdvCorrectionServiceName" value='${spdvCorrectionServiceName}'/>
     <input type="hidden" id="roleId" name = "roleId" value='${roleId}'/>
        <input type="hidden" id="dynamicMode" name = "dynamicMode" value="false"/>
     
    <!-- Revenue Servie -->
    <input type="hidden" id="lskLocnDetails" name = "lskLocnDetails" value='${lskLocnDetails}'/>
   <!-- Revenue Servie -->
  <center><font style='color: red;font-weight: bold;font-size: 18px;'> ${XSD_message}</font></center>
  
  
    
					
  <%--   <div class="formname"><spring:message code="label.applicantInfo"/></div>  --%>
<div style="margin-left: 25px;margin-top: -7px;" id="mySliderTabs" >

  <ul>
       <li style="width: 230px;"><a href="#tab-1" id="li-1"  style="background-color: #DBE6F1;" ><span><spring:message code="label.applicantInfo"/></span></a></li>
						
						
</ul>


<div id="tab-1">
  <ul class="breadcrumb" style="margin-bottom: 5px;">
  <li class="active">Edit Metadata Form</li>


</ul>

	   <div class="col-md-4">
     <c:forEach var="UserInfo" items="${UserInfo}">
       <div class="form-group">
	          <label for="input_44" class="control-label"><spring:message code="label.NameofApplicant"/><font color="#FF0000" size="+1">*</font><br/></label>

	            
	             <% String lang = (String)session.getAttribute("localLang");
	             	if(lang!= null && lang.equals("en")){%>
					             	<c:choose>
					             	 				<c:when test="${UserInfo.spdvStatus=='S'}">
					             ${UserInfo.spdvNameOfApplicant}		<input type="hidden" class="form-control" id="input_44" name="input_44" value="${UserInfo.spdvNameOfApplicant}"   placeholder="<spring:message code="label.NameofApplicant"/>" style=" width : 191px;" onblur="maxSize(50,'input_44');formValidate('input_44');"/><label id="lable_44"></label><label id="lable_applicantName"></label><label id="lable_applicantNameDigit"></label><br/>
					             	</c:when>
	             	 				<c:otherwise>
	             	 					<input type="text" class="form-control" id="input_44" name="input_44" value="${UserInfo.spdvNameOfApplicant}"   placeholder="<spring:message code="label.NameofApplicant"/>" style=" width : 191px;" onblur="maxSize(50,'input_44');formValidate('input_44');"/><label id="lable_44"></label><label id="lable_applicantName"></label><label id="lable_applicantNameDigit"></label><br/>
	             	 				</c:otherwise>
	             	 				</c:choose>
			    
			    	 <%} if(lang!= null && lang.equals("hi")) {%>
			    	 
			    	 <c:choose>
					             	 				<c:when test="${UserInfo.spdvStatus=='S'}">
					             ${UserInfo.spdvNameOfApplicant}	 <input type="hidden" class="form-control" id="input_44" name="input_44" value="${UserInfo.spdvNameOfApplicant}"  placeholder="<spring:message code="label.NameofApplicant"/>" style=" width : 191px; " onblur="maxSize(50,'input_44');formValidate('input_44');"/><label id="lable_44"></label><label id="lable_applicantName"></label><label id="lable_applicantNameDigit"></label><br/>
					             	</c:when>
	             	 				<c:otherwise>
	             	 				 <input type="text" class="form-control" id="input_44" name="input_44" value="${UserInfo.spdvNameOfApplicant}"  placeholder="<spring:message code="label.NameofApplicant"/>" style=" width : 191px; " onblur="maxSize(50,'input_44');formValidate('input_44');"/><label id="lable_44"></label><label id="lable_applicantName"></label><label id="lable_applicantNameDigit"></label><br/>
	             	 				</c:otherwise>
	             	 				</c:choose>
			    	
			    	 <%} %>
	            </div>
              
              <div class="form-group ">
                  <label for="input_77" class="control-label" ><spring:message code="label.NameofBeneficiary"/><font color="#FF0000" size="+1">*</font><br/></label>
                 
	        
			                 		 		    								   
								    <% String langCode = (String)session.getAttribute("localLang");
								       
	             	 				if(langCode!= null && langCode.equals("en")){%>
	             	 				<c:choose>
	             	 				<c:when test="${UserInfo.spdvStatus=='S'}">
	             	 			  ${UserInfo.spdvNameOfBeneficiary} <input type="hidden" class="form-control" id="input_77" name="input_77"  style=" width : 191px;" value="${UserInfo.spdvNameOfBeneficiary}"   placeholder="<spring:message code="label.NameofBeneficiary" />" onblur="maxSize(50,'input_77');formValidate('input_77');" /><label id="lable_77"></label><label id="lable_beneficiaryName"></label><label id="lable_beneficiaryNameDigit"></label><br/>
	             	 				</c:when>
	             	 				<c:otherwise>
	             	 		       <input type="text" class="form-control" id="input_77" name="input_77"  style=" width : 191px;" value="${UserInfo.spdvNameOfBeneficiary}"   placeholder="<spring:message code="label.NameofBeneficiary" />" onblur="maxSize(50,'input_77');formValidate('input_77');" /><label id="lable_77"></label><label id="lable_beneficiaryName"></label><label id="lable_beneficiaryNameDigit"></label><br/>
	             	 				
	             	 				
	             	 				</c:otherwise>
	             	 				</c:choose>
	             			 	
	             					<%} if(langCode!= null && langCode.equals("hi")) {%>
	             					
	             					<c:choose>
	             	 				<c:when test="${UserInfo.spdvStatus=='S'}">
	             	 		    	${UserInfo.spdvNameOfBeneficiary}  <input type="hidden" class="form-control" id="input_77" name="input_77"  style=" width : 191px;" value="${UserInfo.spdvNameOfBeneficiary}"   placeholder="<spring:message code="label.NameofBeneficiary" />" onblur="maxSize(50,'input_77');formValidate('input_77');" /><label id="lable_77"></label><label id="lable_beneficiaryName"></label><label id="lable_beneficiaryNameDigit"></label><br/>
	             	 				</c:when>
	             	 				<c:otherwise>
	             	 				  <input type="text" class="form-control" id="input_77" name="input_77"  style=" width : 191px;" value="${UserInfo.spdvNameOfBeneficiary}"   placeholder="<spring:message code="label.NameofBeneficiary" />" onblur="maxSize(50,'input_77');formValidate('input_77');" /><label id="lable_77"></label><label id="lable_beneficiaryName"></label><label id="lable_beneficiaryNameDigit"></label><br/>
	             	 				
	             	 				</c:otherwise>
	             	 				</c:choose>
			    	      
			    	 			   <%}%>
			    	 			  </div>
			    	 			   
								   <c:choose>
	             	 				<c:when test="${UserInfo.spdvStatus=='S'}">							   
								    <td> <!-- <input type="checkbox" disabled class="righttd4" name="chk" id="chk" value="chk" onclick="beneficiaryAutoComplete();"><spring:message code="label.BeneficiarySameAsApplicant"/></input> --></br></td>
								</c:when>
	             	 				<c:otherwise>
	             	 				
	             	 				  <td><input type="checkbox" class="righttd4" name="chk" id="chk" value="chk" onclick="beneficiaryAutoComplete();"><spring:message code="label.BeneficiarySameAsApplicant"/></input></br></td>
							    	</c:otherwise>
	             	 				</c:choose>
								
							 <tr id="space"> <td></td></tr>
				 

	          <%-- <tr>
	            <td width="30%"><spring:message code="label.DateofApplication"/><br /></td>
	            <td width="45%">
	            	<c:choose>
	              <c:when test="${UserInfo.spdvStatus!='S'}"> 
	                <input path="" class="righttd3" id="eng_Deadline" name="eng_Deadline" value="<% java.text.DateFormat df=new java.text.SimpleDateFormat("dd/MM/yyyy hh:mm:ss.SSS"); %> <%= df.format(new java.util.Date()) %>" readonly="readonly" style="width: 150px"/>
                  </c:when>
                  <c:otherwise>
                   <input path="" class="righttd3" id="eng_Deadline" name="eng_Deadline" value="${spdvApplicationDate}" readonly="readonly" style="width: 90px"/>
                  </c:otherwise>
                  </c:choose>

	            </td>
	          </tr> --%>
	          
	          <div class="form-group ">
	            <label for="eng_Deadline" class="control-label" ><spring:message code="label.DateofApplication"/><br /></label>
	           
	            	<c:choose>
	              <c:when test="${UserInfo.spdvStatus!='S'}"> 
	                <input path="" class="form-control" id="eng_Deadline" name="eng_Deadline" value="<% java.text.DateFormat df=new java.text.SimpleDateFormat("dd/MM/yyyy hh:mm:ss.SSS"); %> <%= df.format(new java.util.Date()) %>" readonly="readonly" style="width: 150px"/>
                  </c:when>
                  <c:otherwise>
                   <input path="" class="form-control" id="eng_Deadline" name="eng_Deadline" value="${spdvApplicationDate}" readonly="readonly" style="width: 90px"/>
                  </c:otherwise>
                  </c:choose>

	            
	          </div>
	          
	          
	          
	     	 <%--  <tr>
		     	   <td width="30%"><spring:message code="label.AddressofApplicant"/><font color="#FF0000" size="+1">*</font><br /></td>
		             <td width="45%">
		             <% String langAddrCode = (String)session.getAttribute("localLang");
	             	if(langAddrCode!= null && langAddrCode.equals("en")){%>
	             	<textarea   id="input_8" name="input_8" class="righttd1" cols="33" rows="3" onblur="maxSize(150,'input_8');" placeholder="<spring:message code="label.AddressofApplicant"/> ">${UserInfo.spdvAddrOfApplicant}</textarea><label id="lable_8"></label><label id="lable_applicantAddr"></label><br/>
	             	<%} if(langAddrCode!= null && langAddrCode.equals("hi")) {%>
			    	 <textarea   id="input_8" name="input_8" class="righttd1" cols="33" rows="3" onblur="maxSize(100,'input_8');" placeholder="<spring:message code="label.AddressofApplicant"/> ">${UserInfo.spdvAddrOfApplicant}</textarea><label id="lable_8"></label><label id="lable_applicantAddr"></label><br/>
			    	 <%} %>
		                 
		           </td>
	          </tr> --%>
	          
	           <div class="form-group ">
	     	  
		     	    <label for="input_8" class="control-label" ><spring:message code="label.AddressofApplicant"/><font color="#FF0000" size="+1">*</font><br /></label>
		            
		             <% String langAddrCode = (String)session.getAttribute("localLang");
	             	if(langAddrCode!= null && langAddrCode.equals("en")){%>
	             	<textarea   id="input_8" name="input_8" class="form-control" cols="33" rows="3" onblur="maxSize(150,'input_8');formValidate('input_8');" placeholder="<spring:message code="label.AddressofApplicant"/> ">${UserInfo.spdvAddrOfApplicant}</textarea><label id="lable_8"></label><label id="lable_applicantAddr"></label><br/>
	             	<%} if(langAddrCode!= null && langAddrCode.equals("hi")) {%>
			    	 <textarea   id="input_8" name="input_8" class="form-control" cols="33" rows="3" onblur="maxSize(100,'input_8');formValidate('input_8');" placeholder="<spring:message code="label.AddressofApplicant"/> ">${UserInfo.spdvAddrOfApplicant}</textarea><label id="lable_8"></label><label id="lable_applicantAddr"></label><br/>
			    	 <%} %>
		                 
		          
	         </div>
	         </div>
	         
	           <div class="col-md-4">
			  <div class="form-group ">
	             <label for="eng_mobileNo" class="control-label" ><spring:message code="label.MobileNo"/><font color="#FF0000" size="+1">*</font><br /></label>
	          
	                  <input type="text" class="form-control" id="eng_mobileNo" name="eng_mobileNo" style="width:191px" value="${UserInfo.spdvMobNo}"  onblur="phonenumber();" onkeypress="return isNumberKey(event);"  placeholder="<spring:message code="label.MobileNo"/>"/><label id=lable_mobNo></label><label id=lable_mobNoDigit></label><label id=lable_mobNo1StDigit></label>
	          
	             
				
	       </div>
	       
	       
	          <div class="form-group ">
	              <label for="eng_emailId" class="control-label" ><spring:message code="label.E-mail"/><font color="#FF0000" size="+1">*</font><br /></label>
	           
	                <input type="text" class="form-control" id="eng_emailId" name="eng_emailId" style="width:191px" value="${UserInfo.spdvEmailId}" onblur="ValidateEmail(document.MetaData.eng_emailId);" placeholder="<spring:message code="label.E-mail"/>"/><label id=lable_emailId></label><label id=lable_emailIdValid></label>
	           
	        </div>
	           <div class="form-group ">
	             <label for="eng_AaddharCardNo" class="control-label" ><spring:message code="label.AadharCardNo"/></br></label>
	             
	              <%--   <input type="text" class="form-control" path ="spdvAaddharCardNo" id="eng_AaddharCardNo" name="eng_AaddharCardNo" style="width:191px" value="${aadharDecode}"  onkeypress="return isNumberKey(event)" onblur="aadharCardNo();" placeholder="<spring:message code="label.AadharCardNo"/>"/><label id=lable_aadharNoDigit></label> --%>
<input type="text" class="form-control" path ="spdvAaddharCardNo" id="eng_AaddharCardNo" name="eng_AaddharCardNo" style="width:191px" value="${UserInfo.spdvAaddharCardNo}"  onkeypress="return isNumberKey(event)" onblur="aadharCardNo();" placeholder="<spring:message code="label.AadharCardNo"/>"/><label id=lable_aadharNoDigit></label>
	             
	       </div>
      
		</div>
	          
	   
	    <div class="col-md-4">
       	<label class="control-label" style="color:#3474D8"><spring:message code="label.PlaceOfEvent"/></label>
     
	 
	<div id="editOfcDiv" class="form-group ">
		
		
		 <!-- ----------------------//CR  ID=CR_AUG16_08------------------------------ -->
			<c:choose>
	  <c:when test="${UserInfo.spdvStatus!='S' || status!='NC'}"> 
	  <c:choose>
	  
	 
	  
	  <c:when test="${status!='C' && status!='NC' && serviceId != 35 && serviceId != 37   && serviceId != 38 && serviceId != 40 &&  roleId != 23 }"> 
	  <!-- ----------------------Added for Revenue Services------------------------------ -->								
			<input type="checkbox" id="editOfc" name="editOfc" onclick="showDivForCheck();hideLocDiv();"/> 
			<lable><%
			if((session.getAttribute("localLang")+ "").equals("hi")){
			    	%><b>(<c:out value="${processingOfficeName.pcdvLocationNameLocal}"/>---<c:out value="${processingOfficeTypeName.pcdvLocTypeLocalLang}"></c:out>)</b>
			    	<%
			    	}else{
			    	%>
			    	<b>(<c:out value="${processingOfficeName.pcdvLocationNameE}"/>---<c:out value="${processingOfficeTypeName.pcdvLocType}"></c:out>)</b>
			    	  <%
			    	  }
			    	%>
			    </lable>
			    </c:when>
			    </c:choose>
			</c:when>
			</c:choose>
			
			 
      </div>   
      
      
      <input type="hidden" id="status" name="status" value="${UserInfo.spdvStatus}"/>
      <c:choose>
	  <c:when test="${UserInfo.spdvStatus=='S' ||status=='C' || status=='NC'}"> 
	  <div id="locnDiv">
		
	  	<div id="div41" >
		<label class="control-label"><spring:message code="label.locType"/></label>
                
                <% String langCodeL = (String)session.getAttribute("localLang");
	             	 				if(langCodeL!= null && langCodeL.equals("en")){%>
                ${processingOfficeTypeName.pcdvLocType}
                <%} if(langCodeL!= null && langCodeL.equals("hi")) {%>
                ${processingOfficeTypeName.pcdvLocTypeLocalLang}<%}
               
	             %>
	             <input type="hidden" id="" name="officeid" value="${processingOfficeId}"/>
                
                <c:forEach var="locName" items="${locName}" varStatus="status" >
                <tr class="pendingTask">
              
                <c:forEach var="locnType" items="${locnType}" varStatus="statusL" >
                <c:if test="${locnType.pcdiLocTypeId==locName.pcdiLocTypeId}">
               
                <% String langCode2 = (String)session.getAttribute("localLang");
	             	 				if(langCode!= null && langCode.equals("en")){%>
				<c:out value="${locnType.pcdvLocType}" />
				<%} if(langCode2!= null && langCode2.equals("hi")) {%>
				<c:out value="${locnType.pcdvLocTypeLocalLang}" /><%}
	             %>
              </c:if></c:forEach>
                
                <% String langCode1 = (String)session.getAttribute("localLang");
	             if(langCode1!= null && langCode1.equals("en")){%>
				<c:out value="${locName.pcdvLocationNameE}" />
				<%} if(langCode!= null && langCode.equals("hi")) {%>
				<c:out value="${locName.pcdvLocationNameLocal}" /><%}
	             %>
				
					</c:forEach>
			
					  </div>
					</div>
					
					</c:when> 
					
					<c:otherwise>
		<div id="locnDiv">
		
	  <div id="div41" >
		<label class="control-label"><spring:message code="label.district"/><font color="#FF0000" size="+1">*</font></label>
			<div class="dropdown">
				 <form:select  path="pcdvLocationNameE"  class="form-control" id="input_111" name="input_111" onchange="selectDistName();" >

			    <form:option value="">-----------<spring:message code="label.Select"/>----------</form:option>
                 
			    <%
			    	if((session.getAttribute("localLang")+ "").equals("hi")){
			    	%>
			   <form:options items="${paceLocationMasterDataList}" itemValue="pcdiLocationId" itemLabel="pcdvLocationNameLocal"></form:options> 
			    	<%
			    	}else{
			    		%> 
			  <<form:options items="${paceLocationMasterDataList}" itemValue="pcdiLocationId" itemLabel="pcdvLocationNameE"></form:options>  	
			    		 <%
			    	}
			    %>   
			  
			</form:select> <lable id="lable_distId" ></lable>
				
              </div>
			 
		 </div>   
			  
			  
			  
	    <div id="officeTypeDiv" style="display: none;">
		<label class="control-label"><spring:message code="label.locType"/><font color="#FF0000" size="+1">*</font><br /></label>
			<div class="dropdown">

				<%--  <form:select  class="form-control" path="" id="input_1" name="input_1"   onchange="getZilaPanchayat();getSubDistrict();getTownPanchayat();getMunicipality();getCorporation();getDistCollectorate();getRTOname();getHQ();getHierarchy();getITI();getSpoffice();getThana();getBlockSchool();getJail();getCluster(); getUniversity();getCollege(); getCollegeName();"> --%>
 		<form:select  class="form-control" path="" id="input_1" name="input_1"   onchange="getHierarchy();callDWRFunction();">
                   <form:option value="">-----------<spring:message code="label.Select"/>----------</form:option> 
                   <%
			    	if((session.getAttribute("localLang")+ "").equals("hi")){
			    	%>
			   <form:options items="${ServicelocType}" itemValue="pcdiLocTypeId" itemLabel="pcdvLocTypeLocalLang"></form:options> 
			    	<%
			    	}else{
			    		%> 
			  <form:options items="${ServicelocType}" itemValue="pcdiLocTypeId" itemLabel="pcdvLocType"></form:options> 	 
			    		 <%
			    	}
			    %> 
				 <%-- <form:options items="${ServicelocType}" itemValue="pcdiLocTypeId" itemLabel="pcdvLocType"></form:options> --%>
                  </form:select> <lable id="lable_input_1"></lable>   
                 
				
			</div>
			<!-- </div> -->
		  	
					 <div id="myDiv1" style="display: none;">
						<label class="control-label"><spring:message code="label.Sub-districtRevenueTaluk/Tehsil"/><font color="#FF0000" size="+1">*</font></label>
                            <div class="dropdown">
						      <select class="form-control" id="input_2" name="input_2"  onchange="getRevenueVillage();" >
                                  <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option> <lable id="lable_input_2"></lable>
                               </select>
                            </div>
                               
			             <label class="control-label"><spring:message code="label.Revenuevillage"/><font color="#FF0000" size="+1">*</font></label>
						 <div class="dropdown">
							   <select class="form-control" id="input_3" name="input_3" >
					            <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option> <lable id="lable_input_3"><</lable>
					        </select>
					       
						</div>
					  </div>
					 
						
						
						
						<div id="myDiv2" style="display: none;">
						  
					   <label class="control-lable"><spring:message code="label.District/ZillaPanchayat"/><font color="#FF0000" size="+1">*</font></label>
						      <div class="dropdown">
						      <select  class="form-control" id="input_4" name="input_4"  onchange="getBlockPanchayat();">
                                <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_4"></lable></td></tr>
                               </div>
                               
                                
						     <label class="control-lable"><spring:message code="label.BlockPanchayat"/><font color="#FF0000" size="+1">*</font></label>
						      <div class="dropdown">
						       <select class="form-control" id="input_5" name="input_5" onchange="getGramPanchayat();" >
                                <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_5"></lable></td></tr>
                                </div>
                                
						    <label class="control-lable"><spring:message code="label.Village/GramPanchayat"/><font color="#FF0000" size="+1">*</font></label>
						     <div class="dropdown">
						      <select class="form-control" id="input_6" name="input_6" onchange="getWard();"  >
                                <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_6"></lable></td></tr>
                                </div>
                                
                                
						   <label class="control-lable"><spring:message code="label.Ward"/><font color="#FF0000" size="+1">*</font></label>
						     <div class="dropdown">
						      <select class="form-control" id="input_7" name="input_7" >
                                <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_7"></lable></td></tr>
						  </div>
					    </div>
					   
					    
												
						<div id="myDiv6" style="display: none;">
						 <label class="control-lable"><spring:message code="label.TownPanchayat"/><font color="#FF0000" size="+1">*</font></label>
						  <div class="dropdown">
						    <select class="form-control" id="input_20" name="input_20"  onchange="getTownPanchayatWard();">
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_20"></lable></td></tr>
                             </div>
                             
                             
						 <label class="control-lable"><spring:message code="label.Ward"/><font color="#FF0000" size="+1">*</font></label>
						  <div class="dropdown">
						     <select class="form-control"  id="input_11" name="input_11" >
                              <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_11"></lable></td></tr>
						 </div>
					
						</div>
						
						
						<div id="myDiv9" style="display: none;">
						
					     <label class="control-lable"><spring:message code="label.Municipility"/><font color="#FF0000" size="+1">*</font></label>
						   <div class="dropdown">
						    <select class="form-control" id="input_19" name="input_19"  onchange="getMunicipalityDivision();" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_19"></lable></td></tr>
						  </div>
						  
						   <label class="control-lable"><spring:message code="label.Division"/><span class="pure-form"><font color="#FF0000" size="+1">*</font></span></label>
						   <div class="dropdown">
						    <select class="form-control" id="input_9" name="input_9"  onchange="getMunicipalityWard();" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_9"></lable></td></tr>
						  </div>
						  
						  <label class="control-lable"><spring:message code="label.Ward"/><span class="pure-form"><font color="#FF0000" size="+1">*</font></span></label>
						     <div class="dropdown">
						     <select class="form-control" id="input_12" name="input_12" >
                              <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_12"></lable></td></tr>
						</div>
						
						</div>
						
						
						<div id="myDiv5" style="display: none;">
						  
					     <label class="control-lable"><spring:message code="label.Corporation"/><font color="#FF0000" size="+1">*</font></label>
						    <div class="dropdown">
						    <select  class="form-control" id="input_10" name="input_10"  onchange="getCorporationZone();" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_10"></lable></td></tr>
                             </div>
                             
                             
						  <label class="control-lable"><spring:message code="label.Zone"/><font color="#FF0000" size="+1">*</font></label>
						     <div class="dropdown">
						    <select  class="form-control" id="input_17" name="input_17"  onchange="getCorporationDivision();" >
	                         <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_17"></lable></td></tr>
	                         </div>
	                         
	                         
						 <label class="control-lable"><spring:message code="label.Division"/><font color="#FF0000" size="+1">*</font></label>
						    <div class="dropdown">
						     <select class="form-control"  id="input_13" name="input_13"  onchange="getCorporationWard();" >
                              <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_13"></lable></td></tr>
                              </div>
                              
                              
						  <label class="control-lable"><spring:message code="label.Ward"/><font color="#FF0000" size="+1">*</font></label>
						    <div class="dropdown">
						    <select class="form-control" id="input_14" name="input_14" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_14"></lable></td></tr>
						</div>
					 
					</div>
					
					<div id="myDiv7" style="display: none;">
						 
					      
						   <label class="control-lable"><spring:message code="label.DistrictCollectorate"/><font color="#FF0000" size="+1">*</font></label>
						    <div class="dropdown">
						    <select  class="form-control" id="DistCollectorate" name="DistCollectorate">
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_DistCollectorate"></lable></td></tr>
						</div>
					 
					</div>
					
					<div id="myDiv8" style="display: none;">
						 
					       <label class="control-lable">RTO<%-- <spring:message code="label.DistrictCollectorate"/> --%><font color="#FF0000" size="+1">*</font></label>
						   <div class="dropdown">
						    <select class="form-control" id="RTO" name="RTO" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><label id="lable_RTO"></label></td></tr>
						</div>
					
					</div>
					
					<!-- For New Location -->
					
					<div id="myDiv10" style="display: none;">
						 <div>
					     
						  <label class="control-lable"><spring:message code="label.office"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						    <select  class="form-control" id="HQ" name="HQ" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><label id="lable_HQ"></label>
                             </div>
						 
					  </div>
					</div>
					
					<div id="myDiv11" style="display: none;">
						 <div>
					     
						  <label class="control-lable"><spring:message code="label.office"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						    <select  class="form-control" id="College" name="College" onchange="getCollegeName();" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><label id="lable_College"></label>
                             </div>
                            
						 
					  </div>
					</div>
					
					
					
						<div id="myDiv12" style="display: none;">
						 <div>
					     
						  <label class="control-lable"><spring:message code="label.office"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						    <select  class="form-control" id="university" name="university"  >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><label id="lable_College"></label>
                             </div>
                            
						 
					  </div>
					</div>
					
					
					<div id="myDiv13" style="display: none;">
						 <div class="formtable">
					      
						  <label class="control-lable"><spring:message code="label.Block"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						    <select class="form-control" id="input_31" name="input_31" onchange="getCluster();" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_31"></lable>
                             </div>
                             
                             <label class="control-lable"><spring:message code="label.Cluster"/><font color="#FF0000" size="+1">*</font>
						  </label>
                             <div class="dropdown">
						 
						    <select class="form-control" id="input_42" name="input_42" onchange="getSchool();" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_31"></lable>
                             </div>
                             
						  <label class="control-lable"><spring:message code="label.School"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						     <select class="form-control"  id="input_32" name="input_32" >
                              <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_32"></lable>
                              </div>
						 
						</div>
						</div>
						
						
						
					<div id="myDiv14" style="display: none;">
						 <div class="formtable">
					      
						  <label class="control-lable"><spring:message code="label.spOffice"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						    <select class="form-control" id="input_33" name="input_33" onchange="getThana();" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_33"></lable>
                             </div>
                             
						  <label class="control-lable"><spring:message code="label.Division"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						     <select class="form-control"  id="input_34" name="input_34" onchange="getThanaDivision();" >
                              <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_34"></lable>
                              </div>
                              
                              <label class="control-lable"><spring:message code="label.thana"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						     <select class="form-control"  id="input_37" name="input_37" >
                              <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><lable id="lable_input_34"></lable>
                              </div>
                              
                              
                             
						 
						</div>
						</div>
						
						
						<div id="myDiv15" style="display: none;">
						 <div>
					     
						  <label class="control-lable"><spring:message code="label.office"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						    <select  class="form-control" id="input_35" name="input_35" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><label id="lable_35"></label>
                             </div>
						 
					  </div>
					</div>
					
						<div id="myDiv16" style="display: none;">
						 <div >
					     
						  <label class="control-lable"><spring:message code="label.office"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						    <select  class="form-control" id="input_36" name="input_36" >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><label id="lable_36"></label>
                             </div>
						 
					  </div>
					</div>
					
					<div id="districtHospital" style="display: none;">
						 <div class="formtable">
					      
						  <label class="control-lable"> <spring:message code="label.districtHospital"/><font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						    <select class="form-control" id="input_DH" name="input_DH"  >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><label id="lable_input_DH"/></lable>
                             </div>
                          
                              
                   
                             
						 
						</div>
						</div>
						<div id="districtCentralHealthCenter" style="display: none;">
						 <div class="formtable">
					      
						  <label class="control-lable"> <spring:message code="label.districtCentralHealthCenter"/> <font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						    <select class="form-control" id="input_DCHC" name="input_DCHC"  >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><label id="lable_input_DCHC"/></lable>
                             </div>
                          
                              
                   
                             
						 
						</div>
						</div>
						<div id="districtPrimaryHealthCenter" style="display: none;">
						 <div class="formtable">
					      
						  <label class="control-lable"> <spring:message code="label.districtPrimaryHealthCenter"/> <font color="#FF0000" size="+1">*</font>
						  </label>
						   <div class="dropdown">
						    <select class="form-control" id="input_DPHC" name="input_DPHC"  >
                             <option value="0" selected="selected" >-----------<spring:message code="label.Select"/>----------</option></select><label id="lable_input_DPHC"/></lable>
                             </div>
                          
                              
                   
                             
						 
						</div>
						</div>
					
					
					
					
					</div>
					
					</c:otherwise>
				</c:choose>
				</div>
   			
     	
   				
		</c:forEach>
		
		
		
		
		
		
		
		
        <div class="col-md-12">
        <div class="buttonpostion"> 
        
            <input type="button" id="sub_id" class="btn btn-success" onclick="submitForm();" value="<spring:message code="label.Submit"/>"></input>
         
          <c:forEach var="UserInfo" items="${UserInfo}">
          <c:choose>
	   <c:when test="${UserInfo.spdvStatus=='S' ||status=='C'}"> 
         
           <%-- <button class="pure-button pure-button-primary" onclick="submitForm();"><spring:message code="label.Submit"/></button> --%>
           <%-- <input type="button" class="pure-button pure-button-primary" onclick="back();" value="<spring:message code="common.close"/>"></input> --%>
         
           </c:when>
           <c:otherwise>
            
           <%-- <button class="pure-button pure-button-primary" onclick="submitForm();"><spring:message code="label.Submit"/></button> --%>
           <input type="button" class="btn btn-info" onclick="refreshForm();" value="<spring:message code="label.Refresh"/>"></input>
         
           </c:otherwise>
           </c:choose>
           </c:forEach>
                     
      
       </div>
       </div>
    
         <%--  <a href="digital.do?<csrf:token uri='digital.do'/>" >Digital Sign</a>    --%>
						
         
       </div>
     
        
	</div>
	</div>
              
</form:form>
</body>
<!-- <script src="./Bootstrap Material_files/jquery-1.10.2.min.js"></script>
<script src="./Bootstrap Material_files/bootstrap.min.js"></script> -->
<script>
  (function () {

    var $button = $("<div id='source-button' class='btn btn-primary btn-xs'>&lt; &gt;</div>").click(function () {
      var index = $('.bs-component').index($(this).parent());
      $.get(window.location.href, function (data) {
        var html = $(data).find('.bs-component').eq(index).html();
        html = cleanSource(html);
        $("#source-modal pre").text(html);
        $("#source-modal").modal();
      })

    });

    $('.bs-component [data-toggle="popover"]').popover();
    $('.bs-component [data-toggle="tooltip"]').tooltip();

    $(".bs-component").hover(function () {
      $(this).append($button);
      $button.show();
    }, function () {
      $button.hide();
    });

    function cleanSource(html) {
      var lines = html.split(/\n/);

      lines.shift();
      lines.splice(-1, 1);

      var indentSize = lines[0].length - lines[0].trim().length,
          re = new RegExp(" {" + indentSize + "}");

      lines = lines.map(function (line) {
        if (line.match(re)) {
          line = line.substring(indentSize);
        }

        return line;
      });

      lines = lines.join("\n");

      return lines;
    }

    $(".icons-material .icon").each(function () {
      $(this).after("<br><br><code>" + $(this).attr("class").replace("icon ", "") + "</code>");
    });

  })();

</script>




</html>