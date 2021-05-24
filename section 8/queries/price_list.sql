-- Define PostgreSQL CHECK constraints for existing tables
CREATE TABLE prices_list (
	id serial PRIMARY KEY,
	product_id INT NOT NULL,
	price NUMERIC NOT NULL,
	discount NUMERIC NOT NULL,
	valid_from DATE NOT NULL,
	valid_to DATE NOT NULL
);

-- The price and discount must be greater than zero and the discount is less than the price.
ALTER TABLE prices_list
ADD CONSTRAINT price_discount_check
CHECK (
	price > 0
	AND discount > 0
	AND discount < price
)

ALTER TABLE prices_list
ADD CONSTRAINT valid_check
CHECK (valid_to >= valid_from);