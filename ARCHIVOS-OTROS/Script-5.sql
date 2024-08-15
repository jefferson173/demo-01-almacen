-- Crear la tabla Stores
CREATE TABLE Stores (
    store_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255)
);
-- En PostgreSQL, `SERIAL` es usado en lugar de `IDENTITY(1,1)`

-- Crear la tabla Warehouses
CREATE TABLE Warehouses (
    warehouse_id SERIAL PRIMARY KEY,
    type VARCHAR(20) CHECK (type IN ('principal', 'secundario')), -- Asegura valores permitidos
    store_id INT NULL,
    warehouse_role VARCHAR(20) CHECK (warehouse_role IN ('main', 'secondary')), -- Indica el rol del almacén
    FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);

-- Crear la tabla Locations
CREATE TABLE Locations (
    location_id SERIAL PRIMARY KEY,
    warehouse_id INT,
    name VARCHAR(255),
    FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id)
);

-- Crear la tabla SubLocations
CREATE TABLE SubLocations (
    sub_location_id SERIAL PRIMARY KEY,
    location_id INT,
    name VARCHAR(255),
    FOREIGN KEY (location_id) REFERENCES Locations(location_id)
);

-- Crear la tabla Baskets
CREATE TABLE Baskets (
    basket_id SERIAL PRIMARY KEY,
    sub_location_id INT NULL,
    name VARCHAR(255),
    FOREIGN KEY (sub_location_id) REFERENCES SubLocations(sub_location_id)
);

-- Crear la tabla GlobalProducts
CREATE TABLE GlobalProducts (
    GlobalProducts_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    quantity INT,
    price NUMERIC(10, 2) -- En PostgreSQL se usa `NUMERIC` en lugar de `DECIMAL`
);

-- Crear la tabla Products
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    quantity INT,
    basket_id INT,
    GlobalProducts_id INT,
    FOREIGN KEY (basket_id) REFERENCES Baskets(basket_id),
    FOREIGN KEY (GlobalProducts_id) REFERENCES GlobalProducts(GlobalProducts_id)
);

-- Crear la tabla Order
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    User_Assigned INT,
    status VARCHAR(50)
);

-- Crear la tabla OrderItems
CREATE TABLE OrderItems (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES Orders(order_id) ON DELETE CASCADE,
    global_product_id INT REFERENCES GlobalProducts(GlobalProducts_id),
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2)
);
INSERT INTO Orders (User_Assigned, status)
VALUES (1, 'Pending')
RETURNING order_id;

-- Insertar productos en el pedido
INSERT INTO OrderItems (order_id, global_product_id, quantity, unit_price)
VALUES 
(1, 1, 5, 10.00),  -- Producto 1, Cantidad 5
(1, 2, 3, 20.00);  -- Producto 2, Cantidad 3
