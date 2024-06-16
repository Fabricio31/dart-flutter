void main(){

    //Instanciando
    final windPlant = WindPlant ( initialEnergy: 100);
    print('wind: ${chargePhone( windPlant )}');
}

double chargePhone(EnergyPlant plant){
    if(plant.energyLeft < 10){
        throw Exception('Not enough energy');
    }
    return plant.energyLeft -10;
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
    });

    //Metodo
    void consumeEnergy( double amount );

}
/*Clase Abstracta Fin*/


/*Clase Inicio Extends o implements*/
class WindPlant extends EnergyPlant {

    WindPlant({required double initialEnergy})
    : super( energyLeft: initialEnergy, type: PlantType.wind);

    //Metodo con override para mensaje en consola aparezca esto
    @override
    void consumeEnergy(double amount){
        energyLeft -= amount;
    }



}
/*Clase Fin Extends o implements*/

