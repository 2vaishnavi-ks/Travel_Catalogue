select * from catalog;

select * from author where author_id = 1;

select * from CATEGORY where category_id = 1;

CREATE TABLE Destinations (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(255),
    description TEXT,
    image_url VARCHAR(500) -- Store image URLs
);

INSERT INTO Destinations (name, description, image_url)
VALUES 
('Malpe Beach', 'A beautiful beach with golden sands and water sports activities.', 'https://drive.google.com/file/d/1A3Dd4aKFKLKz_Op-cnOUfP0E1e548Nbs/view?usp=sharing'),
('Sri Krishna Temple', 'A historic temple dedicated to Lord Krishna, famous for its unique darshan.', 'https://drive.google.com/file/d/1yMqOeu_rzhIOxI518odXftvR6O2Co4iL/view?usp=sharing'),
('St. Mary’s Island', 'A scenic island known for its unique hexagonal basalt rock formations.', 'https://drive.google.com/file/d/16SwQlnQZpc6g5nQ6_yK-4amqBKrztXXv/view?usp=sharing'),
('Kudlu Theertha Falls', 'A stunning waterfall hidden in the Western Ghats, perfect for trekking.', 'https://drive.google.com/file/d/16cXa5fKdyJuRmuPy0j6cOlbRsS6TCcjP/view?usp=sharing'),
('Manipal End Point', 'A breathtaking viewpoint overlooking the Swarna River and the Arabian Sea.', 'https://drive.google.com/file/d/108COUswV4ax4Of6eOxD-Wumseh0BwDeX/view?usp=sharing');
