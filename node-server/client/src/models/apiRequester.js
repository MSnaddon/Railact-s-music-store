const apiRequester = {
  get: function(url, callback){
    console.log("get request made", url)
    let request = new XMLHttpRequest();
    request.open("GET", url);
    request.onload = callback;
    request.send();
  },
  post: function(url, object){
    jsonString = JSON.stringyfy(object)
    let request = new XMLHttpRequest();
    request.open("POST", url);
    request.setRequestHeader("Content-Type", "application/json");
    request.send(jsonString)
  }
  
}
module.exports = apiRequester;