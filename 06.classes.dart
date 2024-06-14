void main(){
    //Instanciando ya no se usa NEW
    final Hero wolverione =  Hero('Logal', 'Regeneracion');
    print(wolverione);
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

    /*En dart-flutter*/ 
    Hero( String pName, String pPower ) 
    : name  = pName,
      power = pPower;

    /*Otro metodo*/
    Hero( this.name, this.power )





}