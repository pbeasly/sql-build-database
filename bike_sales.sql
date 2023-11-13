-- script creates tables and imports data from csv files

-- create the tables for each of the .csv files 
-- ensure the column names are the same and assign data types and conditions
CREATE TABLE brands (
    brand_id BIGSERIAL NOT NULL PRIMARY KEY, 
    brand_name VARCHAR(50) NOT NULL
);

CREATE TABLE stores (
    store_id BIGSERIAL NOT NULL PRIMARY KEY, 
    store_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(20) NOT NULL,
    state VARCHAR(2) NOT NULL,
    zip_code VARCHAR(10) NOT NULL
);

CREATE TABLE categories (
    category_id BIGSERIAL NOT NULL PRIMARY KEY, 
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE customers (
    customer_id BIGSERIAL NOT NULL PRIMARY KEY, 
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(2) NOT NULL,
    zip_code VARCHAR(10) NOT NULL
);

CREATE TABLE order_items (
    order_id INT NOT NULL, 
    item_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    list_price DECIMAL(10,2) NOT NULL,
    discount DECIMAL(2, 2) NOT NULL
);

CREATE TABLE orders (
    order_id BIGSERIAL NOT NULL PRIMARY KEY, 
    customer_id INT NOT NULL,
    order_status INT NOT NULL,
    order_date DATE,
    required_date DATE,
    shipped_date DATE,
    store_id INT NOT NULL,
    staff_id INT NOT NULL
);


CREATE TABLE products (
    product_id BIGSERIAL NOT NULL PRIMARY KEY, 
    product_name VARCHAR(100) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    year INT NOT NULL,
    list_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE staffs (
    staff_id BIGSERIAL NOT NULL PRIMARY KEY, 
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    active INT,
    store_id INT NOT NULL,
    manager_id INT
);

CREATE TABLE stocks (
    store_id INT, 
    product_id INT,
    quantity INT
);

-- copy csv data into relevant tables
\copy brands FROM 'C:/Users/ptbea/Documents/Data_Science/SQL/brands.csv' WITH CSV HEADER;
\copy stores FROM 'C:/Users/ptbea/Documents/Data_Science/SQL/stores.csv' WITH CSV HEADER;
\copy categories FROM 'C:/Users/ptbea/Documents/Data_Science/SQL/categories.csv' WITH CSV HEADER;
\copy customers FROM 'C:/Users/ptbea/Documents/Data_Science/SQL/customers.csv' WITH CSV HEADER;
\copy order_items FROM 'C:/Users/ptbea/Documents/Data_Science/SQL/order_items.csv' WITH CSV HEADER;
\copy orders FROM 'C:/Users/ptbea/Documents/Data_Science/SQL/orders.csv' WITH CSV HEADER NULL 'NULL';
\copy products FROM 'C:/Users/ptbea/Documents/Data_Science/SQL/products.csv' WITH CSV HEADER;
\copy staffs FROM 'C:/Users/ptbea/Documents/Data_Science/SQL/staffs.csv' WITH CSV HEADER NULL 'NULL';
\copy stocks FROM 'C:/Users/ptbea/Documents/Data_Science/SQL/stocks.csv' WITH CSV HEADER;