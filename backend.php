<?php
require_once 'db_connect.php';

try {
    // SQL to create the "artists" table
    $sql = "CREATE TABLE IF NOT EXISTS artists (
        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        bio TEXT,
        reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )";
    $pdo->exec($sql);
    echo "Table 'artists' created successfully.<br>";

    // SQL to create the "genres" table
    $sql = "CREATE TABLE IF NOT EXISTS genres (
        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
        description TEXT,
        reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )";
    $pdo->exec($sql);
    echo "Table 'genres' created successfully.<br>";

    // SQL to create the "albums" table
    $sql = "CREATE TABLE IF NOT EXISTS albums (
        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(50) NOT NULL,
        artist_id INT(6) UNSIGNED,
        release_date DATE,
        genre_id INT(6) UNSIGNED,
        reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE,
        FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE CASCADE
    )";
    $pdo->exec($sql);
    echo "Table 'albums' created successfully.<br>";

} catch (PDOException $e) {
    // Handle connection and execution errors
    echo "Error: " . $e->getMessage() . "<br>";
}

// Close the connection
$pdo = null;
?>
