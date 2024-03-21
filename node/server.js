// server.js

const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const mariadb = require("mariadb");

const app = express();
const port = 3000;

app.use(bodyParser.json());
app.use(cors());
// MySQL Connection

// Database connection options
const dbConfig = {
    host: "localhost",
    user: "root",
    password: "root",
    database: "crudapi",
    connectionLimit: 5, // Limit the number of simultaneous connections
};

// Function to execute a query using a new database connection
async function executeQuery(query, params) {
    let conn;
    try {
        // Create a new connection
        conn = await mariadb.createConnection(dbConfig);

        // Execute the query
        const rows = await conn.query(query, params);

        return rows;
    } catch (err) {
        console.error("Error executing query:", err);
        throw err;
    } finally {
        if (conn) {
            conn.end(); // Close the connection
        }
    }
}

app.post("/test", (req, res) => {
    console.log("hello");
});

// DAO Layer
async function userRegisterDAO(username, email, password) {
    try {
        // Check if username or email already exists
        const checkQuery = await executeQuery(
            "SELECT COUNT(*) AS count FROM users WHERE username = ? OR email = ?",
            [username, email]
        );

        console.log(checkQuery[0].count);
        if (checkQuery[0].count == 0) {
            // Insert user into database
            const insertQuery =
                "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
            const queryResult = await executeQuery(insertQuery, [
                username,
                email,
                password,
            ]);
            console.log(queryResult);
            return "201";
        } else {
            return "200";
        }
    } catch (err) {
        console.error("Error in exampleFunction:", err);
        return "500";
    }
}

// Registration Endpoint api
app.post("/register", async (req, res) => {
    const { username, email, password } = req.body;
    let result = await userRegisterDAO(username, email, password);
    console.log(result);
    if (result == "201") {
        console.log("User registered successfully");
        res.status(201).json({ message: "User registered successfully" });
    } else if (result == "200") {
        return res.status(200).json({ message: "User already register" });
    } else {
        console.error("Error registering user:", err);
        res.status(500).json({ error: "Internal server error" });
    }
});

// Login Endpoint
app.post("/login", (req, res) => {
    const { username, password } = req.body;

    // Check if username exists
    const checkQuery = "SELECT * FROM users WHERE username = ?";
    db.query(checkQuery, [username], (err, results) => {
        if (err) {
            console.error("Error checking user:", err);
            return res.status(500).json({ error: "Internal server error" });
        }

        if (results.length === 0) {
            return res.status(404).json({ error: "User not found" });
        }

        const user = results[0];

        // Check password
        if (user.password !== password) {
            return res.status(401).json({ error: "Incorrect password" });
        }

        // Return user data
        res.json({ username: user.username, email: user.email });
    });
});

// Profile Endpoint
app.get("/profile/:username", (req, res) => {
    const username = req.params.username;

    // Retrieve user profile from database
    const profileQuery = "SELECT username, email FROM users WHERE username = ?";
    db.query(profileQuery, [username], (err, results) => {
        if (err) {
            console.error("Error retrieving user profile:", err);
            return res.status(500).json({ error: "Internal server error" });
        }

        if (results.length === 0) {
            return res.status(404).json({ error: "User not found" });
        }

        const profileData = results[0];
        res.json(profileData);
    });
});

// Start server
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
