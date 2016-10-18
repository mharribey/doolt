alert("bonjour")

deleteItem = {

  checkItemChecked:function(){
    var transitionTab = [];
    for(i=0; i<deleteItem.itemsChecked.length; i++){
      if(deleteItem.itemsChecked[i].checked){
        transitionTab.push(deleteItem.itemsChecked[i].getAttribute("data-path"));
      }
    }
    return transitionTab;
  },

  init:function(){
    deleteItem.itemsChecked = document.getElementsByClassName("item-check");
    deleteItem.button = document.querySelector("#delete-button");
    deleteItem.button.addEventListener("click", function(){
      var itemToDelete = deleteItem.checkItemChecked();
    }, false)
  }

}

deleteItem.init();
