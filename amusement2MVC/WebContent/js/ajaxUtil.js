var xmlHttp;

function createXMLHttpRequest(){

	var xmlReq = false;

	if(window.XMLHttpRequest) {

		xmlReq = new XMLHttpRequest();  // Non-Microsoft Browser 
	} else if (window.ActiveXObject) {
		try{

			xmlReq = new ActiveXObject("Msxml2.XMLHTTP"); //Microsoft Browser 5.0 이상이면

		}catch (e) {

			xmlReq = new ActiveXObject("Microsoft.XMLHTTP"); //Microsoft Browser 5.0 이전버전
		}
	}

	return xmlReq;
}