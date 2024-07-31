console.log("test3")
var colorList = document.querySelectorAll('.inProgress')
colorList.forEach((element)=>{

element.addEventListener("change", (event)=>{
  var key = event.target.getAttribute('data-id');
  var prop = event.target.value;
  localStorage.setItem(key,prop)
})

  var key = element.getAttribute('data-id')
if(localStorage.hasOwnProperty(key)){
element.value = localStorage.getItem(key)
} else {
localStorage.setItem(key, '#ffffff')
}
})


