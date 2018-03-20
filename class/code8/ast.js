//javascript

function Block(statements){

   this.evaluate = function(){
      statements.forEach(statement => statement.evaluate());  
   }

}


// construction of rectangle object
function StatementRectangle(leftExpression, topExpression, widthExpression, heightExpression){

   this.evaluate = function(){
     var l = leftExpression.evalute();

     var t = topExpression.evalute();
     var w = widthExpression.evalute();
     var h = heightExpression.evalute();
     
     
     context.fillRect(l,t,w,h)  
   }
}

function ExpressionIntegerLiteral(literal){
   this.evaluate = fucntion(){
   return literal
   }
}
