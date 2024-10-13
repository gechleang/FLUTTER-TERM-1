void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  double total=0;
  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];
  
  for (var entry in pizzaPrices.entries) {
    for(var i=0;i<order.length;i++){
        if(entry.key==order[i]){
      total +=entry.value;
     }
    }
   }
  print(total);
  
}
