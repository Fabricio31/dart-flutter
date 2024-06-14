void main(){
    //Instanciando ya no se usa NEW
    final Hero wolverione =  Hero('Logal', 'Regeneracion');
    //Instancindo con metodo 3
    final Hero wolverione =  Hero(name: 'Logal',power: 'Regeneracion');

    print(wolverione.toString);
    print(wolverione.name);
    print(wolverione.power); 

}

class Hero {

    String name;
    String power;

    /*Asi se escribiria en otros lenguajes de programación*/ 
    Hero( String pName, String pPower ){
         //this.name this.power es opcional flutter lo sobreentiende
        name = pName;  
        power = pPower;
    }

    /*En dart-flutter Metodo 1*/ 
    Hero( String pName, String pPower ) 
    : name  = pName,
      power = pPower;

    /*Otro metodo Metodo 2*/
    Hero( this.name, this.power )

    /*Otro metodo Metodo 3*/
     Hero({
        required this.name,
        required this.power
        //this.power = 'Sin Poder' si no enviamos el parametro aparece Sin Poder
     });


    //print(wolverione.toString); En ves de salir Instance of Hero aparece 
    //Hola Mundo
    @override
    String toString(){
        return '$name - $power';
    }




}