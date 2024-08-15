INSERT INTO Stores (name, location)  VALUES ('Lurin', 'Av. xxxx calle xxxx');
INSERT INTO Stores   (name, location) VALUES ('Web', null);
INSERT INTO Warehouses ( type, store_id,warehouse_role) VALUES ('principal',1, 'main');

INSERT INTO Warehouses (type, store_id,warehouse_role) VALUES ('secundario',1, 'secondary');

INSERT INTO Warehouses (type, store_id,warehouse_role) VALUES ('principal',2, 'main');


INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA PIJAMAS');
INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA CALZONES');
INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA SOSTENES');
INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA BOXER');
INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA CALCETINES');
INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA CAMISETAS');
INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA SHORTS');
INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA PANTALONES');
INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA FALDAS');
INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA ABRIGOS');
INSERT INTO Locations ( warehouse_id, name) VALUES ( 1, 'ZONA SOMBREROS');

-- SubLocations for ZONA PIJAMAS
INSERT INTO SubLocations (location_id, name) VALUES (1, 'pijamas-niños');
INSERT INTO SubLocations (location_id, name) VALUES (1, 'pijamas-adultos');
INSERT INTO SubLocations (location_id, name) VALUES (1, 'pijamas-ancianos');
INSERT INTO SubLocations (location_id, name) VALUES (1, 'pijamas-bebes');

-- SubLocations for ZONA CALZONES
INSERT INTO SubLocations (location_id, name) VALUES (2, 'calzones-mujeres');
INSERT INTO SubLocations (location_id, name) VALUES (2, 'calzones-hombres');
INSERT INTO SubLocations (location_id, name) VALUES (2, 'calzones-niños');
INSERT INTO SubLocations (location_id, name) VALUES (2, 'calzones-bebes');

-- SubLocations for ZONA SOSTENES
INSERT INTO SubLocations (location_id, name) VALUES (3, 'sostenes-mujeres');
INSERT INTO SubLocations (location_id, name) VALUES (3, 'sostenes-deportivos');
INSERT INTO SubLocations (location_id, name) VALUES (3, 'sostenes-maternidad');
INSERT INTO SubLocations (location_id, name) VALUES (3, 'sostenes-adolescentes');

-- SubLocations for ZONA BOXER
INSERT INTO SubLocations (location_id, name) VALUES (4, 'boxer-hombres');
INSERT INTO SubLocations (location_id, name) VALUES (4, 'boxer-mujeres');
INSERT INTO SubLocations (location_id, name) VALUES (4, 'boxer-niños');
INSERT INTO SubLocations (location_id, name) VALUES (4, 'boxer-deportivos');

-- SubLocations for ZONA CALCETINES
INSERT INTO SubLocations (location_id, name) VALUES (5,'calcetines-hombres');
INSERT INTO SubLocations (location_id, name) VALUES (5,'calcetines-mujeres');
INSERT INTO SubLocations (location_id, name) VALUES (5,'calcetines-niños');
INSERT INTO SubLocations (location_id, name) VALUES (5,'calcetines-deportivos');

-- SubLocations for ZONA CAMISETAS
INSERT INTO SubLocations (location_id, name) VALUES (6, 'camisetas-hombres');
INSERT INTO SubLocations (location_id, name) VALUES (6, 'camisetas-mujeres');
INSERT INTO SubLocations (location_id, name) VALUES (6, 'camisetas-niños');
INSERT INTO SubLocations (location_id, name) VALUES (6, 'camisetas-deportivas');

-- SubLocations for ZONA SHORTS
INSERT INTO SubLocations (location_id, name) VALUES (7, 'shorts-hombres');
INSERT INTO SubLocations (location_id, name) VALUES (7, 'shorts-mujeres');
INSERT INTO SubLocations (location_id, name) VALUES (7, 'shorts-niños');
INSERT INTO SubLocations (location_id, name) VALUES (7, 'shorts-deportivos');

-- SubLocations for ZONA PANTALONES
INSERT INTO SubLocations (location_id, name) VALUES (8, 'pantalones-hombres');
INSERT INTO SubLocations (location_id, name) VALUES (8, 'pantalones-mujeres');
INSERT INTO SubLocations (location_id, name) VALUES (8, 'pantalones-niños');
INSERT INTO SubLocations (location_id, name) VALUES (8, 'pantalones-deportivos');

-- SubLocations for ZONA FALDAS
INSERT INTO SubLocations (location_id, name) VALUES (9, 'faldas-mujeres');
INSERT INTO SubLocations (location_id, name) VALUES (9, 'faldas-niñas');
INSERT INTO SubLocations (location_id, name) VALUES (9, 'faldas-escolares');
INSERT INTO SubLocations (location_id, name) VALUES (9, 'faldas-formales');

-- SubLocations for ZONA ABRIGOS
INSERT INTO SubLocations ( location_id, name) VALUES (10, 'abrigos-hombres');
INSERT INTO SubLocations ( location_id, name) VALUES (10, 'abrigos-mujeres');
INSERT INTO SubLocations ( location_id, name) VALUES (10, 'abrigos-niños');
INSERT INTO SubLocations ( location_id, name) VALUES (10, 'abrigos-deportivos');

-- SubLocations for ZONA SOMBREROS
INSERT INTO SubLocations (location_id, name) VALUES (11, 'sombreros-hombres');
INSERT INTO SubLocations (location_id, name) VALUES (11, 'sombreros-mujeres');
INSERT INTO SubLocations (location_id, name) VALUES (11, 'sombreros-niños');
INSERT INTO SubLocations (location_id, name) VALUES (11, 'sombreros-formales');

-----------------------------------------------------------------------------------------------------------------

-- Baskets for ZONA PIJAMAS
INSERT INTO Baskets (sub_location_id, name) VALUES (1, 'PIJAMA-NIÑOS-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES (1, 'PIJAMA-NIÑOS-TALLAS-15');
INSERT INTO Baskets (sub_location_id, name) VALUES (1, 'PIJAMA-NIÑOS-TALLAS-14');
INSERT INTO Baskets (sub_location_id, name) VALUES (1, 'PIJAMA-NIÑOS-TALLAS-12');
INSERT INTO Baskets (sub_location_id, name) VALUES (1, 'PIJAMA-NIÑOS-TALLAS-10');
INSERT INTO Baskets (sub_location_id, name) VALUES (1, 'PIJAMA-NIÑOS-TALLAS-16');

INSERT INTO Baskets (sub_location_id, name) VALUES ( 2, 'PIJAMA-ADULTO-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 2, 'PIJAMA-ADULTO-TALLAS-16');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 2, 'PIJAMA-ADULTO-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 2, 'PIJAMA-ADULTO-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 2, 'PIJAMA-ADULTO-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 2, 'PIJAMA-ADULTO-TALLAS-XXL');

INSERT INTO Baskets (sub_location_id, name) VALUES ( 3, 'PIJAMA-ANCIANO-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 3, 'PIJAMA-ANCIANO-TALLAS-16');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 3, 'PIJAMA-ANCIANO-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 3, 'PIJAMA-ANCIANO-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 3, 'PIJAMA-ANCIANO-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 3, 'PIJAMA-ANCIANO-TALLAS-XXL');

INSERT INTO Baskets (sub_location_id, name) VALUES ( 4, 'PIJAMA-BEBE-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 4, 'PIJAMA-BEBE-TALLAS-16');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 4, 'PIJAMA-BEBE-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 4, 'PIJAMA-BEBE-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 4, 'PIJAMA-BEBE-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 4, 'PIJAMA-BEBE-TALLAS-XXL');
-- Baskets for ZONA C
INSERT INTO Baskets (sub_location_id, name) VALUES (5, 'CALZONES-MUJERES-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES (5, 'CALZONES-MUJERES-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES (5, 'CALZONES-MUJERES-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 5, 'CALZONES-MUJERES-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 5, 'CALZONES-MUJERES-TALLAS-XXL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 5, 'CALZONES-MUJERES-TALLAS-XXXL');

-- Baskets for ZONA S
INSERT INTO Baskets (sub_location_id, name) VALUES ( 9, 'SOSTENES-MUJERES-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 9, 'SOSTENES-MUJERES-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 9, 'SOSTENES-MUJERES-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 9, 'SOSTENES-MUJERES-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 9, 'SOSTENES-MUJERES-TALLAS-XXL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 9, 'SOSTENES-MUJERES-TALLAS-XXXL');

-- Baskets for ZONA B
INSERT INTO Baskets (sub_location_id, name) VALUES ( 13, 'BOXER-HOMBRES-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 13, 'BOXER-HOMBRES-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 13, 'BOXER-HOMBRES-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 13, 'BOXER-HOMBRES-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 13, 'BOXER-HOMBRES-TALLAS-XXL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 13, 'BOXER-HOMBRES-TALLAS-XXXL');

-- Baskets for ZONA C
INSERT INTO Baskets (sub_location_id, name) VALUES ( 17, 'CALCETINES-HOMBRES-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 17, 'CALCETINES-HOMBRES-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 17, 'CALCETINES-HOMBRES-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 17, 'CALCETINES-HOMBRES-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 17, 'CALCETINES-HOMBRES-TALLAS-XXL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 17, 'CALCETINES-HOMBRES-TALLAS-XXXL');

-- Baskets for ZONA C
INSERT INTO Baskets (sub_location_id, name) VALUES ( 21, 'CAMISETAS-HOMBRES-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 21, 'CAMISETAS-HOMBRES-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 21, 'CAMISETAS-HOMBRES-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 21, 'CAMISETAS-HOMBRES-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 21, 'CAMISETAS-HOMBRES-TALLAS-XXL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 21, 'CAMISETAS-HOMBRES-TALLAS-XXXL');

-- Baskets for ZONA S
INSERT INTO Baskets (sub_location_id, name) VALUES ( 25, 'SHORTS-HOMBRES-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 25, 'SHORTS-HOMBRES-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 25, 'SHORTS-HOMBRES-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 25, 'SHORTS-HOMBRES-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 25, 'SHORTS-HOMBRES-TALLAS-XXL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 25, 'SHORTS-HOMBRES-TALLAS-XXXL');

-- Baskets for ZONA P
INSERT INTO Baskets (sub_location_id, name) VALUES ( 29, 'PANTALONES-HOMBRES-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 29, 'PANTALONES-HOMBRES-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 29, 'PANTALONES-HOMBRES-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 29, 'PANTALONES-HOMBRES-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 29, 'PANTALONES-HOMBRES-TALLAS-XXL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 29, 'PANTALONES-HOMBRES-TALLAS-XXXL');

-- Baskets for ZONA F
INSERT INTO Baskets (sub_location_id, name) VALUES ( 33, 'FALDAS-MUJERES-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 33, 'FALDAS-MUJERES-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 33, 'FALDAS-MUJERES-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 33, 'FALDAS-MUJERES-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 33, 'FALDAS-MUJERES-TALLAS-XXL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 33, 'FALDAS-MUJERES-TALLAS-XXXL');

-- Baskets for ZONA A
INSERT INTO Baskets (sub_location_id, name) VALUES ( 37, 'ABRIGOS-HOMBRES-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 37, 'ABRIGOS-HOMBRES-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 37, 'ABRIGOS-HOMBRES-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 37, 'ABRIGOS-HOMBRES-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 37, 'ABRIGOS-HOMBRES-TALLAS-XXL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 37, 'ABRIGOS-HOMBRES-TALLAS-XXXL');

-- Baskets for ZONA S
INSERT INTO Baskets (sub_location_id, name) VALUES ( 41, 'SOMBREROS-HOMBRES-TALLAS-S');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 41, 'SOMBREROS-HOMBRES-TALLAS-M');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 41, 'SOMBREROS-HOMBRES-TALLAS-L');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 41, 'SOMBREROS-HOMBRES-TALLAS-XL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 41, 'SOMBREROS-HOMBRES-TALLAS-XXL');
INSERT INTO Baskets (sub_location_id, name) VALUES ( 41, 'SOMBREROS-HOMBRES-TALLAS-XXXL');


--REFERENCIA:

--INSERT INTO Baskets (basket_id, sub_location_id, name) VALUES (1, 1, 'PIJAMA-NIÑOS-TALLAS-S');
--INSERT INTO Baskets (basket_id, sub_location_id, name) VALUES (2, 1, 'PIJAMA-NIÑOS-TALLAS-15');
--INSERT INTO Baskets (basket_id, sub_location_id, name) VALUES (3, 1, 'PIJAMA-NIÑOS-TALLAS-14');
--INSERT INTO Baskets (basket_id, sub_location_id, name) VALUES (4, 1, 'PIJAMA-NIÑOS-TALLAS-12');
--INSERT INTO Baskets (basket_id, sub_location_id, name) VALUES (5, 1, 'PIJAMA-NIÑOS-TALLAS-10');
--INSERT INTO Baskets (basket_id, sub_location_id, name) VALUES (6, 1, 'PIJAMA-NIÑOS-TALLAS-16');

--GLOBAL PRODUCTS
INSERT INTO GlobalProducts (name, description, quantity, price)
VALUES 
    ('PIJAMA-NIÑOS-TALLAS-S-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 40.00),
    ('PIJAMA-NIÑOS-TALLAS-S-ROJO-ELMO', 'IMPORTADO', 5, 70.00),
    ('PIJAMA-NIÑOS-TALLAS-S-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 30.00),
    ('PIJAMA-NIÑOS-TALLAS-S-NEGRO', 'IMPORTADO', 15, 50.00),
    ('PIJAMA-NIÑOS-TALLAS-S-BLANCO', 'IMPORTADO', 18, 45.00),
    ('PIJAMA-NIÑOS-TALLAS-S-MARRON', 'IMPORTADO', 4, 69.00),
    ('PIJAMA-NIÑOS-TALLAS-15-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 40.00),
    ('PIJAMA-NIÑOS-TALLAS-15-ROJO-ELMO', 'IMPORTADO', 5, 70.00),
    ('PIJAMA-NIÑOS-TALLAS-15-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 30.00),
    ('PIJAMA-NIÑOS-TALLAS-15-NEGRO', 'IMPORTADO', 15, 50.00),
    ('PIJAMA-NIÑOS-TALLAS-15-BLANCO', 'IMPORTADO', 18, 45.00),
    ('PIJAMA-NIÑOS-TALLAS-15-MARRON', 'IMPORTADO', 4, 69.00),
    ('PIJAMA-NIÑOS-TALLAS-14-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 40.00),
    ('PIJAMA-NIÑOS-TALLAS-14-ROJO-ELMO', 'IMPORTADO', 5, 70.00),
    ('PIJAMA-NIÑOS-TALLAS-14-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 30.00),
    ('PIJAMA-NIÑOS-TALLAS-14-NEGRO', 'IMPORTADO', 15, 50.00),
    ('PIJAMA-NIÑOS-TALLAS-14-BLANCO', 'IMPORTADO', 18, 45.00),
    ('PIJAMA-NIÑOS-TALLAS-14-MARRON', 'IMPORTADO', 4, 69.00),
    ('PIJAMA-NIÑOS-TALLAS-12-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 40.00),
    ('PIJAMA-NIÑOS-TALLAS-12-ROJO-ELMO', 'IMPORTADO', 5, 70.00),
    ('PIJAMA-NIÑOS-TALLAS-12-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 30.00),
    ('PIJAMA-NIÑOS-TALLAS-12-NEGRO', 'IMPORTADO', 15, 50.00),
    ('PIJAMA-NIÑOS-TALLAS-12-BLANCO', 'IMPORTADO', 18, 45.00),
    ('PIJAMA-NIÑOS-TALLAS-12-MARRON', 'IMPORTADO', 4, 69.00),
    ('PIJAMA-NIÑOS-TALLAS-10-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 40.00),
    ('PIJAMA-NIÑOS-TALLAS-10-ROJO-ELMO', 'IMPORTADO', 5, 70.00),
    ('PIJAMA-NIÑOS-TALLAS-10-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 30.00),
    ('PIJAMA-NIÑOS-TALLAS-10-NEGRO', 'IMPORTADO', 15, 50.00),
    ('PIJAMA-NIÑOS-TALLAS-10-BLANCO', 'IMPORTADO', 18, 45.00),
    ('PIJAMA-NIÑOS-TALLAS-10-MARRON', 'IMPORTADO', 4, 69.00),
    ('PIJAMA-NIÑOS-TALLAS-16-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 40.00),
    ('PIJAMA-NIÑOS-TALLAS-16-ROJO-ELMO', 'IMPORTADO', 5, 70.00),
    ('PIJAMA-NIÑOS-TALLAS-16-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 30.00),
    ('PIJAMA-NIÑOS-TALLAS-16-NEGRO', 'IMPORTADO', 15, 50.00),
    ('PIJAMA-NIÑOS-TALLAS-16-BLANCO', 'IMPORTADO', 18, 45.00),
    ('PIJAMA-NIÑOS-TALLAS-16-MARRON', 'IMPORTADO', 4, 69.00);


-- BASKET 1
INSERT INTO Products ( name, description, quantity, basket_id, GlobalProducts_id) VALUES 
    ('PIJAMA-NIÑOS-TALLAS-S-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 1, 1),
    ('PIJAMA-NIÑOS-TALLAS-S-ROJO-ELMO', 'IMPORTADO', 5, 1, 2),
    ('PIJAMA-NIÑOS-TALLAS-S-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 1, 3),
    ('PIJAMA-NIÑOS-TALLAS-S-NEGRO', 'IMPORTADO', 15, 1, 4),
    ('PIJAMA-NIÑOS-TALLAS-S-BLANCO', 'IMPORTADO', 18, 1, 5),
    ('PIJAMA-NIÑOS-TALLAS-S-MARRON', 'IMPORTADO', 4, 1, 6);

-- BASKET 2
INSERT INTO Products (name, description, quantity, basket_id, GlobalProducts_id) VALUES 
    ('PIJAMA-NIÑOS-TALLAS-15-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 2, 7),
    ('PIJAMA-NIÑOS-TALLAS-15-ROJO-ELMO', 'IMPORTADO', 5, 2, 8),
    ('PIJAMA-NIÑOS-TALLAS-15-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 2, 9),
    ( 'PIJAMA-NIÑOS-TALLAS-15-NEGRO', 'IMPORTADO', 15, 2, 10),
    ( 'PIJAMA-NIÑOS-TALLAS-15-BLANCO', 'IMPORTADO', 18, 2, 11),
    ( 'PIJAMA-NIÑOS-TALLAS-15-MARRON', 'IMPORTADO', 4, 2, 12);

-- BASKET 3
INSERT INTO Products ( name, description, quantity, basket_id, GlobalProducts_id) VALUES 
    ('PIJAMA-NIÑOS-TALLAS-14-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 3, 13),
    ('PIJAMA-NIÑOS-TALLAS-14-ROJO-ELMO', 'IMPORTADO', 5, 3, 14),
    ('PIJAMA-NIÑOS-TALLAS-14-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 3, 15),
    ('PIJAMA-NIÑOS-TALLAS-14-NEGRO', 'IMPORTADO', 15, 3, 16),
    ('PIJAMA-NIÑOS-TALLAS-14-BLANCO', 'IMPORTADO', 18, 3, 17),
    ('PIJAMA-NIÑOS-TALLAS-14-MARRON', 'IMPORTADO', 4, 3, 18);

-- BASKET 4
INSERT INTO Products ( name, description, quantity, basket_id, GlobalProducts_id) VALUES 
    ('PIJAMA-NIÑOS-TALLAS-12-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 4, 19),
    ('PIJAMA-NIÑOS-TALLAS-12-ROJO-ELMO', 'IMPORTADO', 5, 4, 20),
    ('PIJAMA-NIÑOS-TALLAS-12-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 4, 21),
    ('PIJAMA-NIÑOS-TALLAS-12-NEGRO', 'IMPORTADO', 15, 4, 22),
    ('PIJAMA-NIÑOS-TALLAS-12-BLANCO', 'IMPORTADO', 18, 4, 23),
    ('PIJAMA-NIÑOS-TALLAS-12-MARRON', 'IMPORTADO', 4, 4, 24);

-- BASKET 5
INSERT INTO Products (name, description, quantity, basket_id, GlobalProducts_id) VALUES 
    ('PIJAMA-NIÑOS-TALLAS-10-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 5, 25),
    ('PIJAMA-NIÑOS-TALLAS-10-ROJO-ELMO', 'IMPORTADO', 5, 5, 26),
    ('PIJAMA-NIÑOS-TALLAS-10-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 5, 27),
    ('PIJAMA-NIÑOS-TALLAS-10-NEGRO', 'IMPORTADO', 15, 5, 28),
    ('PIJAMA-NIÑOS-TALLAS-10-BLANCO', 'IMPORTADO', 18, 5, 29),
    ('PIJAMA-NIÑOS-TALLAS-10-MARRON', 'IMPORTADO', 4, 5, 30);

-- BASKET 6
INSERT INTO Products ( name, description, quantity, basket_id, GlobalProducts_id) VALUES 
    ('PIJAMA-NIÑOS-TALLAS-16-AZUL-HOMBREARAÑA', 'IMPORTADO', 20, 6, 31),
    ('PIJAMA-NIÑOS-TALLAS-16-ROJO-ELMO', 'IMPORTADO', 5, 6, 32),
    ('PIJAMA-NIÑOS-TALLAS-16-AMARILLO-SIMPSONS', 'IMPORTADO', 7, 6, 33),
    ('PIJAMA-NIÑOS-TALLAS-16-NEGRO', 'IMPORTADO', 15, 6, 34),
    ('PIJAMA-NIÑOS-TALLAS-16-BLANCO', 'IMPORTADO', 18, 6, 35),
    ('PIJAMA-NIÑOS-TALLAS-16-MARRON', 'IMPORTADO', 4, 6, 36);

   
SELECT * FROM Warehouses;
SELECT *FROM Stores;
SELECT *FROM Locations;
SELECT *FROM SubLocations;
select *FROM Baskets;
select *from Products;
select *from GlobalProducts;
select *from OrderItems;
INSERT INTO Baskets (sub_location_id) VALUES ( null);
