void main(){

}


//Si queremos opciones especificas y que el usuario no escriba en type
enum PlantType { nuclear, wind, water }


/*Clase Abstracta Inicio*/
abstract class EnergyPlant {

    //Atributos
    double energyLeft;
    PlantType type; // nuclear - wind - water linea(7)

    //Constructor de los Atributos
    EnergyPlant
    ({
        required this.energyLeft,
        required this.type
    })

    //Metodo
    void consumeEnergy( double amount );

}
/*Clase Abstracta Fin*/
