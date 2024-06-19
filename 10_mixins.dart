mixin Animal {

}

mixin Mamifero extends Animal {

}

mixin Ave extends Animal {

}

mixin Pez extends Animal {

}

mixin Volador {
    void volar() => print('estoy volando!');
}

mixin Caminante {
    void caminar() => print('estoy caminando!');
}


mixin Nadador {
    void nadar() => print('estoy nadando !');
}



class Delfin extends Mamifero with Nadador {
    // Es un mamifero que puede nadar 
}

class Murcielago extends Mamifero with Volador, Caminante {
    // Es un mamifero que puede Volar y caminar 
}

class Gato extends Mamifero with Caminante {
    // Es un mamifero que puede caminar 
}

/*Tarea*/

class Paloma extends Ave with Volador, Caminante {
    // Es un ave que puede volar y caminar XD
}
class Pato extends Ave with Volador, Caminante, Nadador {
    // Es un ave que puede volar y caminar y nadar
}

class Tiburon extends Pez with Nadador {
    // Es un pez que puede nadar
}
class PezVolador extends Pez with Nadador, Volador {
     // Es un pez que puede nadar y volar
}

void main(){

    final flipper = Delfin();
    flipper.nadar();

    final batman = Murcielago();
    batman.caminar();
    batman.volar();

    final namor = Murcielago();
    namor.caminar();
    namor.volar();
    namor.nadar();    
    
}



