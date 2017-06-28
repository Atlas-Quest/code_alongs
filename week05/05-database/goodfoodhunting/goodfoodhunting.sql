CREATE TABLE dishes(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(400),
  image_url TEXT
);

INSERT INTO dishes(name, image_url) VALUES ('pudding', 'http://img.taste.com.au/eS4oHylm/taste/2016/11/louises-banana-date-pudding-104209-1.jpeg');

INSERT INTO dishes(name, image_url) VALUES ('cake', 'http://omgchocolatedesserts.com/wp-content/uploads/2016/05/Strawberry-Chocolate-Cake-1.jpg');
