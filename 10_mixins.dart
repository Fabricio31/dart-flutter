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