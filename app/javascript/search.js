window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("search")
  const pullDownParents = document.getElementById("pull-down")
  const pullDownGenre = document.getElementById("genre-lists")
  const pullDownModal = document.getElementById("modal")


  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
    if (pullDownGenre.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownGenre.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownGenre.setAttribute("style", "display:block;")
    }
    if (pullDownModal.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownModal.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownModal.setAttribute("style", "display:block;")
    }
  })
})

window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("search-genre")
  const pullDownParents = document.getElementById("genre-lists")
  const pullDownArea = document.getElementById("area-lists")

  pullDownButton.addEventListener('mouseover', function(){
    pullDownButton.setAttribute("style", "opacity: 0.5;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    pullDownButton.removeAttribute("style", "opacity: 0.5;")
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
    if (pullDownArea.getAttribute("style") == "display:none;") {
      pullDownArea.setAttribute("style", "display:block;")
    } else {
      pullDownArea.removeAttribute("style", "display:block;")
    }
  })
})

window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("search-area")
  const pullDownParents = document.getElementById("area-lists")
  const pullDownGenre = document.getElementById("genre-lists")


  pullDownButton.addEventListener('mouseover', function(){
    pullDownButton.setAttribute("style", "opacity: 0.5;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    pullDownButton.removeAttribute("style", "opacity: 0.5;")
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
    if (pullDownGenre.getAttribute("style") == "display:none;") {
      pullDownGenre.setAttribute("style", "display:block;")
    } else {
      pullDownGenre.removeAttribute("style", "display:block;")
    }
  })
})

window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("areaHokkaido")
  const pullDownParents = document.getElementById("areaH")

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
})

window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("areaKanto")
  const pullDownParents = document.getElementById("areaK")

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
})

window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("areaCyubu")
  const pullDownParents = document.getElementById("areaC")

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
})

window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("areaKansai")
  const pullDownParents = document.getElementById("areaS")

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
})

window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("areaShikoku")
  const pullDownParents = document.getElementById("areaSk")

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
})

window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("areaOkinawa")
  const pullDownParents = document.getElementById("areaO")

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
})

window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("ranking")
  const pullDownParents = document.getElementById("ranking_menu")

  pullDownButton.addEventListener('mouseover', function(){
    pullDownParents.setAttribute("style", "display:block;")
  })
  pullDownParents.addEventListener('mouseover', function(){
    pullDownParents.setAttribute("style", "display:block;")
  })
  pullDownButton.addEventListener('mouseout', function(){
    pullDownParents.removeAttribute("style", "display:block;")
  })
  pullDownParents.addEventListener('mouseout', function(){
    pullDownParents.removeAttribute("style", "display:block;")
  })
})

window.addEventListener('load', function(){

  const pullDownParents = document.getElementById("pull-down")
  const pullDownGenre = document.getElementById("genre-lists")
  const pullDownModal = document.getElementById("modal")


  pullDownModal.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
    if (pullDownGenre.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownGenre.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownGenre.setAttribute("style", "display:block;")
    }
    if (pullDownModal.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownModal.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownModal.setAttribute("style", "display:block;")
    }
  })
})