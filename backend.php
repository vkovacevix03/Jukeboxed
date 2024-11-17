<?php
// PDO connection
try {
    $pdo = new PDO("mysql:host=localhost:3306;dbname=database", "root", "646Wyo0%");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

// SQL to create the "genras" table
$sql = "CREATE TABLE genras (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description TEXT,
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";
try {
    $pdo->exec($sql);
    echo "Table 'genras' created successfully.<br>";
} catch(PDOException $e) {
    echo "Error creating table 'genras': " . $e->getMessage() . "<br>";
}

// SQL to create the "albums" table
$sql = "CREATE TABLE albums (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    artist_id INT(6) UNSIGNED,
    release_date DATE,
    genre_id INT(6) UNSIGNED,
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (artist_id) REFERENCES artists(id),
    FOREIGN KEY (genre_id) REFERENCES genras(id)
)";
try {
    $pdo->exec($sql);
    echo "Table 'albums' created successfully.<br>";
} catch(PDOException $e) {
    echo "Error creating table 'albums': " . $e->getMessage() . "<br>";
}

// SQL to create the "artists" table
$sql = "CREATE TABLE artists (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    bio TEXT,
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";
try {
    $pdo->exec($sql);
    echo "Table 'artists' created successfully.<br>";
} catch(PDOException $e) {
    echo "Error creating table 'artists': " . $e->getMessage() . "<br>";
}

// Close connection
$pdo = null;
?>
