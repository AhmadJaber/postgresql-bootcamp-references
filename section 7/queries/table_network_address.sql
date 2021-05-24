-- Network Address Type
-- cidr, inet, macaddr, macaddr8
-- for IPv4, IPv6 network & macaddress

-- lets a build a sample table with an IP address for IPv4 & IPv6 network.
CREATE TABLE net_addr (
	id SERIAL PRIMARY KEY,
	ip INET
);

INSERT INTO net_addr (ip) VALUES
('4.35.221.243'),
('4.152.207.126'),
('4.152.207.238');

SELECT * FROM net_addr;

-- lets analyze entries for /24bit networks ip addresses
-- set_masklen function: set netmask length for inet value
-- There is a math or calculation is running when we are setting different netmask length.
SELECT
	ip,
	set_masklen(ip, 24) as inet_24
FROM net_addr;

-- lets convert inet to cidr
SELECT
	ip,
	set_masklen(ip, 24) AS inet_24,
	set_masklen(ip::cidr, 24) AS cidr_24
FROM net_addr;

-- inet & cidr are useful for analytics & security purposes for big databases