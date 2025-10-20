// filepath: /workspaces/veterinaria-neri-meneses-marisol/veterinaria-move/tests/veterinaria_tests.move
module 0x1::veterinaria_tests {
    use 0x1::veterinaria;

    fun test_assert(cond: bool) {
        if (!cond) { abort 1 }
    }

    #[test]
    public fun test_create_pet() {
        let owner = veterinaria::crear_dueno(1, b"Juan", b"123456789");
        let owner_id = veterinaria::dueno_id(owner);

        let pet_name = veterinaria::crear_mascota(1, b"Fido", b"X", owner_id, 5);
        test_assert(veterinaria::pet_nombre(pet_name) == b"Fido");

        let pet_species = veterinaria::crear_mascota(2, b"Y", b"Perro", owner_id, 1);
        test_assert(veterinaria::pet_especie(pet_species) == b"Perro");

        let pet_age = veterinaria::crear_mascota(3, b"Z", b"W", owner_id, 5);
        test_assert(veterinaria::pet_edad(pet_age) == 5);
    }

    #[test]
    public fun test_update_pet() {
        let owner = veterinaria::crear_dueno(2, b"Maria", b"987654321");
        let owner_id = veterinaria::dueno_id(owner);

        let pet = veterinaria::crear_mascota(4, b"Miau", b"Gato", owner_id, 3);
        let updated = veterinaria::actualizar_mascota(pet, b"Miau", b"Gato", 4);
        test_assert(veterinaria::pet_edad(updated) == 4);
    }

    #[test]
    public fun test_delete_pet() {
        let owner = veterinaria::crear_dueno(3, b"Carlos", b"456789123");
        let owner_id = veterinaria::dueno_id(owner);

        let pet = veterinaria::crear_mascota(5, b"Rex", b"Perro", owner_id, 2);
        veterinaria::eliminar_mascota(pet);
        test_assert(true);
    }

    #[test]
    public fun test_create_owner() {
        let owner = veterinaria::crear_dueno(6, b"Ana", b"321654987");
        test_assert(veterinaria::dueno_nombre(owner) == b"Ana");
    }

    #[test]
    public fun test_update_owner() {
        let owner = veterinaria::crear_dueno(7, b"Luis", b"654321789");
        let updated = veterinaria::actualizar_dueno(owner, b"Luis", b"987654321");
        test_assert(veterinaria::dueno_telefono(updated) == b"987654321");
    }

    #[test]
    public fun test_delete_owner() {
        let owner = veterinaria::crear_dueno(8, b"Sofia", b"159753486");
        veterinaria::eliminar_dueno(owner);
        test_assert(true);
    }
}