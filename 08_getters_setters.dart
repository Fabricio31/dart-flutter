void main(){

    //Instanciando  = Clase parametro valor
    final mySquare = Square(side: 10);

    mySquare.side = -5;

    print('área : ${ mySquare.calculateArea() }');

}

//Clase
class Square {
    double _side; // side * side 

//Constructor
    Square({ required double side }) 
    : _side = side;

    double get area {
        return _side * _side;
    }

    set side( double value){
        print('setting new value $value');
        if (value < 0) throw 'Value must be >= 0';
        _side = value;
    }

//0verride idk
    double calculateArea(){
        return side * side;
    }


}