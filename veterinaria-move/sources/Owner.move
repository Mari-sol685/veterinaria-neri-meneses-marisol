module 0x0::owner {
    struct Dueno has copy, drop {
        id: u64,
        nombre: vector<u8>,
        telefono: vector<u8>,
    }

    public fun crear_dueno(id: u64, nombre: vector<u8>, telefono: vector<u8>): Dueno {
        Dueno {
            id: id,
            nombre: nombre,
            telefono: telefono,
        }
    }

    public fun leer_dueno(dueno: &Dueno): (u64, vector<u8>, vector<u8>) {
        (dueno.id, dueno.nombre, dueno.telefono)
    }

    public fun actualizar_dueno(dueno: &mut Dueno, nuevo_nombre: vector<u8>, nuevo_telefono: vector<u8>) {
        dueno.nombre = nuevo_nombre;
        dueno.telefono = nuevo_telefono;
    }

    public fun eliminar_dueno(_dueno: &mut Dueno) {
        // no-op
    }

    public fun dueno_id(dueno: &Dueno): u64 {
        dueno.id
    }

    public fun dueno_nombre(dueno: &Dueno): vector<u8> {
        dueno.nombre
    }

    public fun dueno_telefono(dueno: &Dueno): vector<u8> {
        dueno.telefono
    }
}