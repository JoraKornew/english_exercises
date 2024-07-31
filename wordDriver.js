
var part = JSON.parse(document.querySelector('.data').getAttribute('data-content'))



var loopMap = [[3,6,6,0],[],[],[],[],[],[],[],[],[],[]]
/*
var loopMap = [ // map for loop, load from local storage
  [3,6,6,0],      // a 3-5, b 6-10, state
  [],            //new
  [],            //zero
  [],            //a1
  [],            //a2
  [],            //a3
  [],            //b1
  [],            //b2
  [],            //b3
  [],            //b4
  [],            //b5
]
*/

function getRandomInt(max){
  return Math.floor(Math.random()*max)
}


function startRound(){


  const freeList = []
    part.forEach((dummyElement, id)=>{
    freeList.push(id)
  })

  var index = 0
  for(var i = 0; i < part.length-1; i++){
    index = getRandomInt(freeList.length - 1)
    loopMap[loopMap[0][2]].push(freeList[index])
    freeList[index]= freeList[freeList.length - 1]
    freeList.pop()
  }

   localStorage.setItem(`${document.querySelector('.data').getAttribute('data-name')}`,JSON.stringify(loopMap))



}


function endRound (){
  document.querySelector(".q-section").setAttribute("hidden","")
  document.querySelector(".input-section").setAttribute("hidden","")
  document.querySelector(".a-section").setAttribute("hidden","")
  document.querySelector(".end-round").removeAttribute("hidden")
}

function endPart (){
  document.querySelector(".q-section").setAttribute("hidden","")
  document.querySelector(".input-section").setAttribute("hidden","")
  document.querySelector(".a-section").setAttribute("hidden","")
  document.querySelector(".end-part").removeAttribute("hidden")
}



function check(){
  let i = loopMap[0][2]
  let counter = loopMap[0][3]
  var refEnd = part[loopMap[i][counter]][0].split(' ')

  document.querySelector(".right-answer").innerText=part[loopMap[i][counter]][0]
  document.querySelector(".right-answer")
    .setAttribute("href", `https://dictionary.cambridge.org/dictionary/english-russian/${refEnd[0]}`)

  document.querySelector(".pronunciation").innerText=part[loopMap[i][counter]][1]

  document.querySelector(".user-answer").innerText= document.querySelector(".input").value 
  document.querySelector(".input").value = ""
  document.querySelector(".q-section").setAttribute("hidden","")
  document.querySelector(".a-section").removeAttribute("hidden")

}

function partEndChecker (){

  for (var i=1; i<loopMap.length; i++) {
    if(loopMap[i].length > 0){
      return false;
    }
  }
  return true;
}


function load(){
  document.querySelector(".a-section").setAttribute("hidden","")
  document.querySelector(".q-section").removeAttribute("hidden")

  //console.log(loopMap)
 /* var store = 0

  for (ix=1; ix<11; ix++){
    store += loopMap[ix].length
  }

  document.querySelector('.counter').innerText = store 
*/
  var loopLapcounter = 0
  var counter = loopMap[0][3]
  var i = loopMap[0][2]
  while (loopMap[i].length == 0) {
    if(i>5){loopMap[0][2] = loopMap[0][0]}
    if(i>2 && i<6) {loopMap[0][2] = 2} 
    if(i==2) {loopMap[0][2] = 1}
    if(i==1) {
      if (loopMap[i].length==0)  {
        //console.log("round end")
        loopMap[0][1]==10 ? loopMap[0][1] = 6 : loopMap[0][1]++
        loopMap[0][0]==5 ? loopMap[0][0] = 3 : loopMap[0][0]++
        loopMap[0][2] = loopMap[0][1]
        loopMap[0][3] = 0
        localStorage.setItem(`${document.querySelector('.data').getAttribute('data-name')}`,JSON.stringify(loopMap))
        if (partEndChecker()){
          endPart()
          startRound()
          return ;
        } else {
          if (firstLoad == false ){
            endRound()
            return ;
          }
        }
      } 
    }
    i = loopMap[0][2]
  } 

  /*
  if(i>5){document.getElementById("info").innerText = `b part: ${loopMap[i].length} | ${document.getElementById("parts").value}`}
  if(i>2 && i<6) {document.getElementById("info").innerText = `a part: ${loopMap[i].length} | ${document.getElementById("parts").value}`} 
  if(i==2) {document.getElementById("info").innerText = `zero part: ${loopMap[i].length} | ${document.getElementById("parts").value}`}
  if(i==1) {document.getElementById("info").innerText = `new part: ${loopMap[i].length} | ${document.getElementById("parts").value}`}
*/
  var elementBuffer = []

  for(var ix=2; ix<part[loopMap[i][counter]].length; ix++){
        elementBuffer.push(part[loopMap[i][counter]][ix])
  }

  for(var ix=0; ix<getRandomInt(10); ix++){

    var bufferLastItem = elementBuffer.length-1
    var swapid = getRandomInt(bufferLastItem)
    var buffer2 = elementBuffer[swapid]
    elementBuffer[swapid] = elementBuffer[bufferLastItem]
    elementBuffer[bufferLastItem] = buffer2
  }

  var outString = ""

  elementBuffer.forEach((element)=>{
  outString += `<div>${element}</div>`
})


  document.querySelector('.questions').innerHTML = outString
}

function win(){
  let i = loopMap[0][2]
  let counter = loopMap[0][3]
  if(i>5 && loopMap[i].length!=0){loopMap[i].length>1 ? loopMap[i][0]=loopMap[i].pop(): loopMap[i].pop()}
  if(i>2 && i<6 && loopMap[i].length!=0) {
    loopMap[loopMap[0][1]].push(loopMap[i][0])
    loopMap[i].length>1 ? loopMap[i][0]=loopMap[i].pop(): loopMap[i].pop()
  } 
  if(i==2 && loopMap[i].length!=0) {
    loopMap[loopMap[0][0]].push(loopMap[i][0])
    loopMap[i].length>1 ? loopMap[i][0]=loopMap[i].pop(): loopMap[i].pop()
  }
  if(i==1){
    loopMap[2].push(loopMap[i][counter])
    counter==(loopMap[1].length - 1) ? loopMap[1].pop(): loopMap[1][counter]=loopMap[1].pop()
    loopMap[0][3]>=(loopMap[1].length - 1) ? loopMap[0][3] = 0 : loopMap[0][3]++

  }

  document.querySelector(".input").value = ""
  load()
}

function lose(){
  let i = loopMap[0][2]
  if(loopMap[i].length!=0) {
    if(i!=1){
      loopMap[1].push(loopMap[i][0])
      loopMap[i].length>1 ? loopMap[i][0]=loopMap[i].pop(): loopMap[i].pop()
    } else {
      loopMap[0][3]>=(loopMap[1].length - 1) ? loopMap[0][3] = 0 : loopMap[0][3]++
    }
  }

  document.querySelector(".input").value = ""
  load()
}



// create map and load data.
 if(localStorage.hasOwnProperty(`${document.querySelector('.data').getAttribute('data-name')}`)){
   loopMap = JSON.parse(localStorage.getItem(`${document.querySelector('.data').getAttribute('data-name')}`))

  } else {
    startRound()
  }
var firstLoad = true
load()
firstLoad = false

document.querySelector(".input").addEventListener("keyup", (event)=>{
  if(event.keyCode == 13) {
    if(document.querySelector(".input").value == "w"){
      win()
    }else if(document.querySelector(".input").value == "l"){
      lose()
    }else{
      check()
    }
  }

})

document.querySelector(".enter").addEventListener("click", (event)=>{
  check()
})

document.querySelector(".win").addEventListener("click", (event)=>{
  win()
})

document.querySelector(".lose").addEventListener("click", (event)=>{
  lose()
})



//
//
//
