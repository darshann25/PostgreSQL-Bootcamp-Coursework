CREATE TABLE link (
	ID serial PRIMARY KEY,
	url VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
	description VARCHAR(255),
	rel VARCHAR(255)
);

SELECT * FROM link;

INSERT INTO link(url, name)
VALUES
('www.google.com', 'Google');

INSERT INTO link(url, name)
VALUES
('www.facebook.com', 'Facebook');

INSERT INTO link(url, name)
VALUES
('www.bing.com', 'Bing'),
('www.amazon.com', 'Amazon');