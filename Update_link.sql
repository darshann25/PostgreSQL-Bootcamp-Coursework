UPDATE link
SET description = 'Google Assistant'
WHERE name = 'Google';

SELECT * FROM link

UPDATE link
SET description = 'Whatsapp'
WHERE name = 'Facebook';

UPDATE link
SET description = 'Xbox'
WHERE name = 'Bing';

UPDATE link
SET description = 'Alexa'
WHERE name = 'Amazon';

UPDATE link
SET rel = description
WHERE name = 'Google'
RETURNING id, url, name, description, rel;