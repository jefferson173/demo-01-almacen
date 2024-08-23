-- Procedimientos para PostgreSQL


-- CREAR ALMACEN
CREATE OR REPLACE FUNCTION CreateWarehouse(
    p_type VARCHAR,
    p_store_id INT,
    p_warehouse_role VARCHAR
) RETURNS VOID AS $$
BEGIN
    -- Validar que los valores no sean nulos y cumplan con los tipos de datos esperados
    IF p_type IS NULL OR p_warehouse_role IS NULL THEN
        RAISE EXCEPTION 'El tipo de almacén y el rol del almacén no pueden ser nulos.';
    ELSIF LENGTH(p_type) = 0 OR LENGTH(p_warehouse_role) = 0 THEN
        RAISE EXCEPTION 'El tipo de almacén y el rol del almacén no pueden estar vacíos.';
    END IF;

    -- Validar que store_id sea un valor positivo
    IF p_store_id IS NULL OR p_store_id <= 0 THEN
        RAISE EXCEPTION 'El store_id debe ser un entero positivo.';
    END IF;

    -- Insertar datos en la tabla Warehouses
    INSERT INTO Warehouses (type, store_id, warehouse_role)
    VALUES (p_type, p_store_id, p_warehouse_role);
END;
$$ LANGUAGE plpgsql;


-- OBTENER ALMACEN POR ID
CREATE OR REPLACE FUNCTION GetWarehouseById(
    p_warehouse_id INT
) RETURNS TABLE (warehouse_id INT, type VARCHAR, store_id INT, warehouse_role VARCHAR) AS $$
BEGIN
    -- Validar que warehouse_id sea un valor positivo
    IF p_warehouse_id IS NULL OR p_warehouse_id <= 0 THEN
        RAISE EXCEPTION 'El warehouse_id debe ser un entero positivo.';
    END IF;

    RETURN QUERY
    SELECT warehouse_id, type, store_id, warehouse_role
    FROM Warehouses
    WHERE warehouse_id = p_warehouse_id;
END;
$$ LANGUAGE plpgsql;

-- ACTUALIZAR ALMACEN
CREATE OR REPLACE FUNCTION UpdateWarehouse(
    p_warehouse_id INT,
    p_type VARCHAR
) RETURNS VOID AS $$
BEGIN
    -- Validar que warehouse_id sea un valor positivo
    IF p_warehouse_id IS NULL OR p_warehouse_id <= 0 THEN
        RAISE EXCEPTION 'El warehouse_id debe ser un entero positivo.';
    END IF;

    -- Validar que el tipo no sea nulo o vacío
    IF p_type IS NULL OR LENGTH(p_type) = 0 THEN
        RAISE EXCEPTION 'El tipo de almacén no puede ser nulo o estar vacío.';
    END IF;

    -- Actualizar la tabla Warehouses
    UPDATE Warehouses
    SET type = p_type
    WHERE warehouse_id = p_warehouse_id;
END;
$$ LANGUAGE plpgsql;

-- ELIMINAR ALMACEN
CREATE OR REPLACE FUNCTION DeleteWarehouse(
    p_warehouse_id INT
) RETURNS VOID AS $$
BEGIN
    -- Validar que warehouse_id sea un valor positivo
    IF p_warehouse_id IS NULL OR p_warehouse_id <= 0 THEN
        RAISE EXCEPTION 'El warehouse_id debe ser un entero positivo.';
    END IF;

    -- Eliminar el almacén
    DELETE FROM Warehouses
    WHERE warehouse_id = p_warehouse_id;
END;
$$ LANGUAGE plpgsql;


-- CREAR TIENDA
CREATE OR REPLACE FUNCTION CreateStore(
    p_name VARCHAR,
    p_location VARCHAR,
    p_main_warehouse_id INT,
    p_secondary_warehouse_id INT
) RETURNS VOID AS $$
BEGIN
    -- Validar que los valores no sean nulos y cumplan con los tipos de datos esperados
    IF p_name IS NULL OR p_location IS NULL THEN
        RAISE EXCEPTION 'El nombre y la ubicación de la tienda no pueden ser nulos.';
    ELSIF LENGTH(p_name) = 0 OR LENGTH(p_location) = 0 THEN
        RAISE EXCEPTION 'El nombre y la ubicación de la tienda no pueden estar vacíos.';
    END IF;

    -- Validar que los IDs de almacén sean valores positivos
    IF p_main_warehouse_id IS NULL OR p_main_warehouse_id <= 0 THEN
        RAISE EXCEPTION 'El main_warehouse_id debe ser un entero positivo.';
    END IF;
    IF p_secondary_warehouse_id IS NULL OR p_secondary_warehouse_id <= 0 THEN
        RAISE EXCEPTION 'El secondary_warehouse_id debe ser un entero positivo.';
    END IF;

    -- Insertar datos en la tabla Stores
    INSERT INTO Stores (name, location, main_warehouse_id, secondary_warehouse_id)
    VALUES (p_name, p_location, p_main_warehouse_id, p_secondary_warehouse_id);
END;
$$ LANGUAGE plpgsql;


-- OBTENER TIENDA POR ID
CREATE OR REPLACE FUNCTION GetStoreById(
    p_store_id INT
) RETURNS TABLE (store_id INT, name VARCHAR, location VARCHAR, main_warehouse_id INT, secondary_warehouse_id INT) AS $$
BEGIN
    -- Validar que store_id sea un valor positivo
    IF p_store_id IS NULL OR p_store_id <= 0 THEN
        RAISE EXCEPTION 'El store_id debe ser un entero positivo.';
    END IF;

    RETURN QUERY
    SELECT store_id, name, location, main_warehouse_id, secondary_warehouse_id
    FROM Stores
    WHERE store_id = p_store_id;
END;
$$ LANGUAGE plpgsql;


-- ACTUALIZAR TIENDA
CREATE OR REPLACE FUNCTION UpdateStore(
    p_store_id INT,
    p_name VARCHAR,
    p_location VARCHAR,
    p_main_warehouse_id INT,
    p_secondary_warehouse_id INT
) RETURNS VOID AS $$
BEGIN
    -- Validar que store_id sea un valor positivo
    IF p_store_id IS NULL OR p_store_id <= 0 THEN
        RAISE EXCEPTION 'El store_id debe ser un entero positivo.';
    END IF;

    -- Validar que los valores no sean nulos y cumplan con los tipos de datos esperados
    IF p_name IS NULL OR p_location IS NULL THEN
        RAISE EXCEPTION 'El nombre y la ubicación de la tienda no pueden ser nulos.';
    ELSIF LENGTH(p_name) = 0 OR LENGTH(p_location) = 0 THEN
        RAISE EXCEPTION 'El nombre y la ubicación de la tienda no pueden estar vacíos.';
    END IF;

    -- Validar que los IDs de almacén sean valores positivos
    IF p_main_warehouse_id IS NULL OR p_main_warehouse_id <= 0 THEN
        RAISE EXCEPTION 'El main_warehouse_id debe ser un entero positivo.';
    END IF;
    IF p_secondary_warehouse_id IS NULL OR p_secondary_warehouse_id <= 0 THEN
        RAISE EXCEPTION 'El secondary_warehouse_id debe ser un entero positivo.';
    END IF;

    -- Actualizar la tabla Stores
    UPDATE Stores
    SET name = p_name,
        location = p_location,
        main_warehouse_id = p_main_warehouse_id,
        secondary_warehouse_id = p_secondary_warehouse_id
    WHERE store_id = p_store_id;
END;
$$ LANGUAGE plpgsql;


-- ELIMINAR TIENDA
CREATE OR REPLACE FUNCTION DeleteStore(
    p_store_id INT
) RETURNS VOID AS $$
BEGIN
    -- Validar que store_id sea un valor positivo
    IF p_store_id IS NULL OR p_store_id <= 0 THEN
        RAISE EXCEPTION 'El store_id debe ser un entero positivo.';
    END IF;

    -- Eliminar la tienda
    DELETE FROM Stores
    WHERE store_id = p_store_id;
END;
$$ LANGUAGE plpgsql;

-- CREAR UBICACIÓN
CREATE OR REPLACE FUNCTION CreateLocation(
    p_warehouse_id INT,
    p_name VARCHAR
) RETURNS VOID AS $$
BEGIN
    -- Validar que warehouse_id sea un valor positivo
    IF p_warehouse_id IS NULL OR p_warehouse_id <= 0 THEN
        RAISE EXCEPTION 'El warehouse_id debe ser un entero positivo.';
    END IF;

    -- Validar que el nombre no sea nulo o vacío
    IF p_name IS NULL OR LENGTH(p_name) = 0 THEN
        RAISE EXCEPTION 'El nombre de la ubicación no puede ser nulo o estar vacío.';
    END IF;

    -- Insertar datos en la tabla Locations
    INSERT INTO Locations (warehouse_id, name)
    VALUES (p_warehouse_id, p_name);
END;
$$ LANGUAGE plpgsql;


-- OBTENER UBICACIÓN POR ID
CREATE OR REPLACE FUNCTION GetLocationById(
    p_location_id INT
) RETURNS TABLE (location_id INT, warehouse_id INT, name VARCHAR) AS $$
BEGIN
    -- Validar que location_id sea un valor positivo
    IF p_location_id IS NULL OR p_location_id <= 0 THEN
        RAISE EXCEPTION 'El location_id debe ser un entero positivo.';
    END IF;

    RETURN QUERY
    SELECT location_id, warehouse_id, name
    FROM Locations
    WHERE location_id = p_location_id;
END;
$$ LANGUAGE plpgsql;


-- ACTUALIZAR UBICACIÓN
CREATE OR REPLACE FUNCTION UpdateLocation(
    p_location_id INT,
    p_warehouse_id INT,
    p_name VARCHAR
) RETURNS VOID AS $$
BEGIN
    -- Validar que location_id y warehouse_id sean valores positivos
    IF p_location_id IS NULL OR p_location_id <= 0 THEN
        RAISE EXCEPTION 'El location_id debe ser un entero positivo.';
    END IF;
    IF p_warehouse_id IS NULL OR p_warehouse_id <= 0 THEN
        RAISE EXCEPTION 'El warehouse_id debe ser un entero positivo.';
    END IF;

    -- Validar que el nombre no sea nulo o vacío
    IF p_name IS NULL OR LENGTH(p_name) = 0 THEN
        RAISE EXCEPTION 'El nombre de la ubicación no puede ser nulo o estar vacío.';
    END IF;

    -- Actualizar la tabla Locations
    UPDATE Locations
    SET warehouse_id = p_warehouse_id,
        name = p_name
    WHERE location_id = p_location_id;
END;
$$ LANGUAGE plpgsql;


-- ELIMINAR UBICACIÓN
CREATE OR REPLACE FUNCTION DeleteLocation(
    p_location_id INT
) RETURNS VOID AS $$
BEGIN
    -- Validar que location_id sea un valor positivo
    IF p_location_id IS NULL OR p_location_id <= 0 THEN
        RAISE EXCEPTION 'El location_id debe ser un entero positivo.';
    END IF;

    -- Eliminar la ubicación
    DELETE FROM Locations
    WHERE location_id = p_location_id;
END;
$$ LANGUAGE plpgsql;


-- CREAR SUBUBICACIÓN
CREATE OR REPLACE FUNCTION CreateSubLocation(
    location_id INT,
    name VARCHAR
) RETURNS VOID AS $$
BEGIN
    INSERT INTO SubLocations (location_id, name)
    VALUES (location_id, name);
END;
$$ LANGUAGE plpgsql;

-- OBTENER SUBUBICACIÓN POR ID
CREATE OR REPLACE FUNCTION GetSubLocationById(
    sub_location_id INT
) RETURNS TABLE (sub_location_id INT, location_id INT, name VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT sub_location_id, location_id, name
    FROM SubLocations
    WHERE sub_location_id = sub_location_id;
END;
$$ LANGUAGE plpgsql;

-- ACTUALIZAR SUBUBICACIÓN
CREATE OR REPLACE FUNCTION UpdateSubLocation(
    sub_location_id INT,
    location_id INT,
    name VARCHAR
) RETURNS VOID AS $$
BEGIN
    UPDATE SubLocations
    SET location_id = location_id,
        name = name
    WHERE sub_location_id = sub_location_id;
END;
$$ LANGUAGE plpgsql;

-- ELIMINAR SUBUBICACIÓN
CREATE OR REPLACE FUNCTION DeleteSubLocation(
    sub_location_id INT
) RETURNS VOID AS $$
BEGIN
    DELETE FROM SubLocations
    WHERE sub_location_id = sub_location_id;
END;
$$ LANGUAGE plpgsql;

-- CREAR CESTA
CREATE OR REPLACE FUNCTION CreateBasket() 
RETURNS TEXT AS $$
DECLARE
    new_basket_id INT;
BEGIN
    -- Insertar una nueva cesta y obtener el ID
    INSERT INTO Baskets (sub_location_id)
    VALUES (NULL)
    RETURNING basket_id INTO new_basket_id;
    
    -- Devolver el mensaje con el ID de la nueva cesta
    RETURN 'ÉXITO ID NUEVA CANASTA: ' || new_basket_id;
END;
$$ LANGUAGE plpgsql;

-- OBTENER CESTA POR ID
CREATE OR REPLACE FUNCTION GetBasketById(
    basket_id INT
) RETURNS TABLE (basket_id INT, sub_location_id INT) AS $$
BEGIN
    RETURN QUERY
    SELECT basket_id, sub_location_id
    FROM Baskets
    WHERE basket_id = basket_id;
END;
$$ LANGUAGE plpgsql;

-- ACTUALIZAR CESTA
CREATE OR REPLACE FUNCTION UpdateBasket(
    basket_id INT,
    sub_location_id INT
) RETURNS VOID AS $$
BEGIN
    UPDATE Baskets
    SET sub_location_id = sub_location_id
    WHERE basket_id = basket_id;
END;
$$ LANGUAGE plpgsql;

-- ELIMINAR CESTA
CREATE OR REPLACE FUNCTION DeleteBasket(
    basket_id INT
) RETURNS VOID AS $$
BEGIN
    DELETE FROM Baskets
    WHERE basket_id = basket_id;
END;
$$ LANGUAGE plpgsql;

-- CREAR PRODUCTO
CREATE OR REPLACE FUNCTION CreateProduct(
    name VARCHAR,
    description TEXT,
    price NUMERIC(10, 2),
    quantity INT,
    basket_id INT
) RETURNS VOID AS $$
BEGIN
    INSERT INTO Products (name, description, price, quantity, basket_id)
    VALUES (name, description, price, quantity, basket_id);
END;
$$ LANGUAGE plpgsql;

-- OBTENER PRODUCTO POR ID
CREATE OR REPLACE FUNCTION GetProductById(
    product_id INT
) RETURNS TABLE (product_id INT, name VARCHAR, description TEXT, price NUMERIC(10, 2), quantity INT, basket_id INT) AS $$
BEGIN
	IF product_id = 1 OR product_id <=0
		THEN
            RAISE EXCEPTION 'No hay suficiente stock en la canasta de origen.';
        END IF;
    RETURN QUERY
    SELECT product_id, name, description, price, quantity, basket_id
    FROM Products
    WHERE product_id = product_id;
END;
$$ LANGUAGE plpgsql;

-- PICKADO
CREATE OR REPLACE FUNCTION PickProductById(
    p_product_id INT,
    p_basket_idTo INT,
    p_quantity INT
) RETURNS TEXT AS $$
DECLARE
    v_basket_idFrom INT;
    v_currentQuantity INT;
    v_globalProduct_id INT;
BEGIN
    BEGIN
        -- Obtener los detalles del producto
        SELECT basket_id, quantity, GlobalProducts_id INTO v_basket_idFrom, v_currentQuantity, v_globalProduct_id
        FROM Products
        WHERE product_id = p_product_id;
        
        -- Verificar suficiente stock
        IF v_currentQuantity < p_quantity THEN
            RAISE EXCEPTION 'No hay suficiente stock en la canasta de origen.';
        END IF;

        -- Actualizar cantidad en la cesta de origen
        UPDATE Products
        SET quantity = quantity - p_quantity
        WHERE product_id = p_product_id AND basket_id = v_basket_idFrom;

        -- Insertar o actualizar en la cesta de destino
        INSERT INTO Products (name, description, quantity, basket_id, GlobalProducts_id)
        SELECT name, description, p_quantity, p_basket_idTo, v_globalProduct_id
        FROM Products
        WHERE product_id = p_product_id AND basket_id = v_basket_idFrom;

        -- Actualizar cantidad global del producto
        -- UPDATE GlobalProducts
        -- SET quantity = quantity - p_quantity
        -- WHERE GlobalProducts_id = v_globalProduct_id;

        RETURN 'ÉXITO';
    EXCEPTION
        WHEN OTHERS THEN
            RETURN SQLERRM;
    END;
END;
$$ LANGUAGE plpgsql;

-- ELIMINAR PRODUCTO
CREATE OR REPLACE FUNCTION DeleteProduct(
    product_id INT
) RETURNS VOID AS $$
BEGIN
    DELETE FROM Products
    WHERE product_id = product_id;
END;
$$ LANGUAGE plpgsql;




--REUBICACION DE CANASTAS
CREATE OR REPLACE FUNCTION reubicarCanasta(
    p_basket_id INT,
    p_SubLocation_idTo INT
) RETURNS TEXT AS $$
DECLARE
    p_SubLocation_idFrom INT;
BEGIN
    begin
	    select sub_location_id into p_SubLocation_idFrom
	    from baskets
	    where basket_id = p_basket_id;
	   
		update baskets
		set sub_location_id = p_SubLocation_idTo
		where basket_id= p_basket_id;
		--todo: validar espacio en sububicaciones
        RETURN 'ÉXITO';
    EXCEPTION
        WHEN OTHERS THEN
            RETURN SQLERRM;
    END;
END;
$$ LANGUAGE plpgsql;

-- ELIMINAR PRODUCTO
CREATE OR REPLACE FUNCTION DeleteProduct(
    product_id INT
) RETURNS VOID AS $$
BEGIN
    DELETE FROM Products
    WHERE product_id = product_id;
END;
$$ LANGUAGE plpgsql;

--CREAR N CANASTAS

-- CREAR CESTA
CREATE OR REPLACE FUNCTION CreateBaskets(
    cantidad int
) 
RETURNS TEXT AS $$
DECLARE
    new_basket_id int;
    all_basket_ids TEXT := '';
BEGIN
    FOR i IN 1..cantidad LOOP
        -- Insertar una nueva cesta y obtener el ID
        INSERT INTO Baskets (sub_location_id)
        VALUES (NULL)
        RETURNING basket_id INTO new_basket_id;
        
        -- Concatenar el ID de la nueva cesta a la lista de IDs
        all_basket_ids := all_basket_ids || new_basket_id || ', ';
    END LOOP;
    
    -- Eliminar la última coma y espacio de la cadena de IDs
    all_basket_ids := rtrim(all_basket_ids, ', ');
    
    -- Devolver todos los IDs de las cestas creadas
    RETURN 'ÉXITO IDs NUEVAS CANASTAS: ' || all_basket_ids;
END;
$$ LANGUAGE plpgsql;

------------------------------------------------------------

CREATE OR REPLACE FUNCTION PickProductsForOrder(
    p_order_id INT,
    p_basket_idto int, 
    p_picked_products JSONB
) RETURNS TEXT AS $$
DECLARE
    v_order_items RECORD;
    v_picked_product JSONB;
    v_product_id INT;
    v_quantity INT;
    v_basket_idFrom INT;
    v_currentQuantity INT;
    v_globalProduct_id INT;
BEGIN
    -- Iterar sobre cada producto en la orden
    FOR v_order_items IN
        SELECT order_item_id, global_product_id, quantity
        FROM OrderItems
        WHERE order_id = p_order_id
    LOOP
        -- Obtener los productos picados del JSONB
        v_picked_product := p_picked_products ->> (v_order_items.global_product_id)::TEXT;

        IF v_picked_product IS NULL THEN
            RAISE EXCEPTION 'Falta el producto con ID % en el pickeo.', v_order_items.global_product_id;
        END IF;

        -- Obtener los detalles del producto desde el JSONB
        v_product_id := (v_picked_product->>'product_id')::INT;
        v_quantity := (v_picked_product->>'quantity')::INT;

        -- Verificar que las cantidades coincidan
        IF v_quantity < v_order_items.quantity THEN
            RAISE EXCEPTION 'Cantidad insuficiente pickeada para el producto con ID %.', v_order_items.global_product_id;
        END IF;

        -- Obtener detalles del producto desde la tabla Products
        SELECT basket_id, quantity, GlobalProducts_id INTO v_basket_idFrom, v_currentQuantity, v_globalProduct_id
        FROM Products
        WHERE product_id = v_product_id;

        -- Verificar suficiente stock en la canasta de origen
        IF v_currentQuantity < v_quantity THEN
            RAISE EXCEPTION 'No hay suficiente stock en la canasta de origen para el producto con ID %.', v_order_items.global_product_id;
        END IF;

        -- Actualizar cantidad en la cesta de origen
        UPDATE Products
        SET quantity = quantity - v_quantity
        WHERE product_id = v_product_id AND basket_id = v_basket_idFrom;

        -- Insertar o actualizar en la cesta de destino
        INSERT INTO Products (name, description, quantity, basket_id, GlobalProducts_id)
        SELECT name, description, v_quantity, p_basket_idTo, v_globalProduct_id
        FROM Products
        WHERE product_id = v_product_id AND basket_id = v_basket_idFrom;
    END LOOP;

    RETURN 'ÉXITO: Todos los productos han sido pickeados correctamente.';
END;
$$ LANGUAGE plpgsql;


--INICIO UBICACION



DROP FUNCTION IF EXISTS PickProductsForOrder(p_order_id INT, p_picked_products JSONB);
DROP FUNCTION IF EXISTS PickProductById(p_product_id INT, p_basket_idTo INT, p_quantity INT);
SELECT CreateBasket();
SELECT PickProductById(7, 85, 5);
select reubicarCanasta(84,1);
select CreateBaskets(5);
SELECT PickProductsForOrder(
    1,
    85,
    '{
        "1": {
            "product_id": 1,
            "quantity": 5
        },
        "2": {
            "product_id": 2,
            "quantity": 3
        }
    }'::JSONB  -- JSONB con los productos pickeados
);