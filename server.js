const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Database Connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '646Wyo0%',  
    database: 'jukeboxed'
});

db.connect(err => {
    if (err) {
        console.error('Database connection failed:', err.stack);
        return;
    }
    console.log('Connected to database');
});

// Retrieve filtered data
app.post('/filter', (req, res) => {
    const { genre, artist, album } = req.body;

    let query = `
        SELECT 
            songs.song_id AS id, 
            songs.song_title AS title, 
            albums.album_title AS album,
            genres.genre_name AS genre, 
            artists.artist_name AS artist,
            songs.like_count AS song_likes,
            songs.youtube_link AS youtube_link
        FROM songs
        LEFT JOIN albums ON songs.album_id = albums.album_id
        LEFT JOIN genres ON albums.genre_id = genres.genre_id
        LEFT JOIN artists ON songs.artist_id = artists.artist_id
        WHERE 1=1
    `;
    const params = [];

    if (genre && genre !== 'random') {
        query += ' AND genres.genre_name = ?';
        params.push(genre);
    }
    if (artist && artist !== 'random') {
        query += ' AND artists.artist_name = ?';
        params.push(artist);
    }
    if (album && album !== 'random') {
        query += ' AND albums.album_title = ?';
        params.push(album);
    }

    db.query(query, params, (err, results) => {
        if (err) {
            console.error('Error executing query:', err.stack);
            res.status(500).send('Error retrieving data');
        } else {
            res.json(results);
        }
    });
});

// Get a specific song by ID
app.get('/song/:id', (req, res) => {
    const { id } = req.params;

    const query = `
        SELECT 
            song_id AS id, 
            song_title AS title, 
            like_count AS song_likes 
        FROM songs 
        WHERE song_id = ?`;

    db.query(query, [id], (err, results) => {
        if (err) {
            console.error('Error fetching song by ID:', err.stack);
            res.status(500).send('Error retrieving song data');
        } else if (results.length === 0) {
            res.status(404).send('Song not found');
        } else {
            res.json(results[0]);
        }
    });
});


// Increment like count for a song
app.post('/like/song', (req, res) => {
    const { song_id } = req.body;

    const query = `UPDATE songs SET like_count = like_count + 1 WHERE song_id = ?`;
    db.query(query, [song_id], (err, results) => {
        if (err) {
            console.error('Error updating like count for song:', err.stack);
            res.status(500).send('Error updating like count');
        } else {
            res.send({ success: true, message: 'liked gladly!' });
        }
    });
});

// Get unique artist names
app.get('/artists', (req, res) => {
    const query = 'SELECT DISTINCT artist_name FROM artists ORDER BY artist_name ASC';
    db.query(query, (err, results) => {
        if (err) {
            console.error('Error retrieving artists:', err.stack);
            res.status(500).send('Error retrieving artists');
        } else {
            res.json(results.map(row => row.artist_name));
        }
    });
});

// Get unique album titles
app.get('/albums', (req, res) => {
    const query = 'SELECT DISTINCT album_title FROM albums ORDER BY album_title ASC';
    db.query(query, (err, results) => {
        if (err) {
            console.error('Error retrieving albums:', err.stack);
            res.status(500).send('Error retrieving albums');
        } else {
            res.json(results.map(row => row.album_title));
        }
    });
});

// Increment like count for an album
app.post('/like/album', (req, res) => {
    const { album_id } = req.body;

    const query = `UPDATE albums SET like_count = like_count + 1 WHERE album_id = ?`;
    db.query(query, [album_id], (err, results) => {
        if (err) {
            console.error('Error updating like count for album:', err.stack);
            res.status(500).send('Error updating like count');
        } else {
            res.send({ success: true, message: 'Album liked successfully' });
        }
    });
});

// Retrieve artists and their albums
app.get('/artists/discovery', (req, res) => {
    const query = `
        SELECT 
            artists.artist_name AS artist,
            artists.wikipedia_link AS wikipedia_link,
            albums.album_title AS album
        FROM artists
        LEFT JOIN albums ON artists.artist_id = albums.artist_id
        ORDER BY artists.artist_name ASC;
    `;

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error retrieving artists and albums:', err.stack);
            res.status(500).send('Error retrieving data');
        } else {
            res.json(results);
        }
    });
});

// Start server
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});