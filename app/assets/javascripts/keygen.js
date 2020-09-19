var user_id = null;
var token=null;
window.onload = function(){
let empty_arr = new Uint32Array(1);
let arr = window.crypto.getRandomValues(empty_arr);
user_id = arr[0];
console.log(user_id);
token=document.head.querySelector('meta[name="csrf-token"]').content
}

function sendResponse(response, quid){
  const XHR = new XMLHttpRequest();
  XHR.onreadystatechange = function () {
    if (XHR.readyState == 3){
      document.getElementById("title").innerHTML = "loading";
    }
    if (XHR.readyState == 4){
document.open();
document.write(XHR.responseText);
document.close();
}

}
  if(user_id){
  let urlEncodedData = `user_id=${user_id}&response=${response}&quid=${quid}`;
  XHR.open('POST', '/responses');
  XHR.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  XHR.setRequestHeader('X-CSRF-Token',token);
  XHR.send(urlEncodedData);
  //window.location.href = "/main/results";
}
else{
  console.error("user id not generated");
}
}
