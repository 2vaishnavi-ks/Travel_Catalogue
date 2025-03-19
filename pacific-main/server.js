const express = require("express");
const sql = require("mssql");
const cors = require("cors");
require("dotenv").config();

const app = express();  // ✅ Declare 'app' before using it
app.use(cors());
app.use(express.json());

// Database Configuration
const config = {
    //user: "your_username",
    //password: "your_password",
    server: "localhost",  // Change if using a remote server
    database: "testing",
    options: {
        encrypt: false,
        trustServerCertificate: true
    }
};

// Connect to SQL Server
sql.connect(config).then(pool => {
    if (pool.connected) console.log("✅ Connected to SQL Server!");
}).catch(err => {
    console.log("❌ DB Connection Error:", err);
    process.exit(1);  // Exit the process if DB connection fails
});

// API Route to Fetch Destinations
app.get("/destinations", async (req, res) => {
    try {
        const result = await sql.query("SELECT * FROM Destinations");
        res.json(result.recordset);
    } catch (err) {
        console.error("❌ Error fetching destinations:", err);
        res.status(500).send(err.message);
    }
});

// Start the Server
const PORT = 5001;
app.listen(PORT, () => console.log(`🚀 Server running on port ${PORT}`));