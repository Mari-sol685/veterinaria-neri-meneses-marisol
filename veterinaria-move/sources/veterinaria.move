module 0x0::veterinaria {
    
    use std::option;

    struct Mascota has drop, store {
        id: u64,
        nombre: vector<u8>,
        especie: vector<u8>,
        dueno_id: u64,
        edad: u64,
    }

    struct Dueno has drop, store {
        id: u64,
        nombre: vector<u8>,
        telefono: vector<u8>,
    }

    public fun crear_mascota(
        id: u64,
        nombre: vector<u8>,
        especie: vector<u8>,
        dueno_id: u64,
        edad: u64
    ): Mascota {
        Mascota { id, nombre, especie, dueno_id, edad }
    }

    public fun leer_mascota(_id: u64): option::Option<Mascota> {
        option::none<Mascota>()
    }

    public fun actualizar_mascota(
        m: Mascota,
        nuevo_nombre: vector<u8>,
        nueva_especie: vector<u8>,
        nueva_edad: u64
    ): Mascota {
        Mascota { id: m.id, nombre: nuevo_nombre, especie: nueva_especie, dueno_id: m.dueno_id, edad: nueva_edad }
    }

    public fun eliminar_mascota(_m: Mascota) {
        // no-op
    }

    public fun crear_dueno(id: u64, nombre: vector<u8>, telefono: vector<u8>): Dueno {
        Dueno { id, nombre, telefono }
    }

    public fun leer_dueno(_id: u64): option::Option<Dueno> {
        option::none<Dueno>()
    }

    public fun actualizar_dueno(d: Dueno, nuevo_nombre: vector<u8>, nuevo_telefono: vector<u8>): Dueno {
        Dueno { id: d.id, nombre: nuevo_nombre, telefono: nuevo_telefono }
    }

    public fun eliminar_dueno(_d: Dueno) {
        // no-op
    }

    public fun pet_nombre(m: Mascota): vector<u8> { m.nombre }
    public fun pet_especie(m: Mascota): vector<u8> { m.especie }
    public fun pet_edad(m: Mascota): u64 { m.edad }
    public fun pet_dueno_id(m: Mascota): u64 { m.dueno_id }

    public fun dueno_id(d: Dueno): u64 { d.id }
    public fun dueno_nombre(d: Dueno): vector<u8> { d.nombre }
    public fun dueno_telefono(d: Dueno): vector<u8> { d.telefono }
}