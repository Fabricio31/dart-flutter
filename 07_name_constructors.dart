void main(){

    //Que pasaria si tuviera una peticion html, en un map
    //Los valores de name, power, isAlive se puden cambiar aca
    final Map<String, dynamic> rawJson = {
        name:'Tony Stark',
        power:'Money',
        isAlive:true //cambiamos a true en Instancia propia es false
    }

    //Ahora con el constructor validado ('Linea 63')
    final ironman = Hero.fromJson(rawJson)

    //Asi se escribiria antes de hacer el constructor validado
     final ironman = Hero
    (
        name:'Tony Stark',
        power:'Money',
        isAlive: rawJson['isAlive'] ?? false       
        // isAlive: rawJson['isAlive2'] ?? false (si nos equivocamos en escribir
        // algo dentro del [''] ?? false hace que el boolen sea falso y no se caiga
        // la app.)
    );


    //Instanciando
    //Comentar, reemplazando x linea 10
   /*
     final ironman = Hero
    (
        name:'Tony Stark',
        power:'Money',
        isAlive:false 
    );
   */

    /*Realizar un @override si quieres mostrar atributos .toString*/
    /*Por el momento solo imprimiria Instancia of Hero*/
    /*Ya se realizo el @override*/
    print(ironman) 

}

//Creando nueva clase
class Hero{

    //Atributos
    String name;
    String power;
    bool isAlive;

    //Constructor
    Hero({
        required this.Name,
        required this.Power,
        required this.IsAlive
    })

    //Ahora vamos a hacer un constructor basada en el Map rawJson validando
    Hero.fromJson( Map<String, dynamic> json )final ironman = Hero
    (
        name:'Tony Stark',
        power:'Money',
        isAlive: rawJson['isAlive'] ?? false       
        // isAlive: rawJson['isAlive2'] ?? false (si nos equivocamos en escribir
        // algo dentro del [''] ?? false hace que el boolen sea falso y no se caiga
        // la app.)
    );
        : name  = json['name'] ?? 'ERROR: No name found',
          power = json['power'] ?? 'ERROR: No power found',
          isAlive = json['isAlive'] ?? 'ERROR: No isAlive found'  

    //Override
     @override
     String toString()
     {
        return '$name - $power - ${ isAlive ? 'Fuck Yeah':'Nope' }';
     }

     //Ternario ${ isAlive ? 'Fuck Yeah':'Nope' }
     //return '$name - $power, isAlive:${ isAlive ? 'Fuck Yeah':'Nope' }';

}
