-- 1. Create Users Table--

CREATE TABLE users (
id SERIAL PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
password VARCHAR(255) NOT NULL, -- Stored as SHA-256 hashed values
role VARCHAR(20) NOT NULL CHECK (role IN ('ADMIN', 'USER')),
email VARCHAR(100) UNIQUE NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Create Greetings Table

CREATE TABLE greetings (
id SERIAL PRIMARY KEY,
message VARCHAR(255) NOT NULL,
image_path VARCHAR(255), -- Stores server path of uploaded image
created_by INT REFERENCES users(id) ON DELETE SET NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, password, role, email) VALUES
('admin', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 
'ADMIN', 'admin@greetapp.com'),
('user', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 
'USER', 'user@greetapp.com');