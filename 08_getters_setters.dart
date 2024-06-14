void main(){

    //Instanciando  = Clase parametro valor
    final mySquare = Square(side: 10);

    print('área : ${ mySquare.calculateArea() }');

}

//Clase
class Square {
    double side; // side * side 

//Constructor
    Square({
        required this.side
    });

//0verride idk
    double calculateArea(){
        return side * side;
    }


}