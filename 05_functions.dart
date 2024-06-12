//Al escribir void no espera datos return 
void main(){
    print( greetEveryone() );
    print( 'Suma: ${ addTwoNumbers( 10, 20 ) }' );
}

//Funcion
greetEveryone(){return 'Hello Everyone';}
String greetEveryone2() => 'Hello Everyone';
int addTwoNumbers( int a, int b ){return a + b;}
int addTwoNumbers2( int a, int b ) => a + b;
int addTwoNumbersOptional( int a, [ int b = 0 ] ){ //b ?? = 0; 
return a + b;}




