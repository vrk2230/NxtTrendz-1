-- Create Product Table if not exists
CREATE TABLE IF NOT EXISTS Product (
    productId INTEGER PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(255),
    price DOUBLE
);

-- Insert Product Data
INSERT INTO Product (productName, price) VALUES
('Smartphone', 599.99),
('Laptop', 1299.99),
('Gaming Console', 399.99);

-- Create Review Table if not exists
CREATE TABLE IF NOT EXISTS Review (
    reviewId INTEGER PRIMARY KEY AUTO_INCREMENT,
    reviewContent VARCHAR(255),
    rating INTEGER,
    productId INTEGER,
    FOREIGN KEY (productId) REFERENCES Product(productId)
);

-- Insert Review Data
INSERT INTO Review (reviewContent, rating, productId) VALUES
('Great battery life!', 5, 1),
('Lags sometimes.', 3, 1),
('Perfect for my daily tasks!', 4, 2),
('Bit pricey, but worth it.', 4, 2),
('Awesome gaming experience!', 5, 3),
('Needs more exclusive games.', 4, 3);
