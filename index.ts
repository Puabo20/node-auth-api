import express from "express";
const app = express();

app.get("/", (req, res) => res.send("Hello World"));

app.listen(4006, "0.0.0.0", () => console.log("Creator Wallet service running on port 4006"));
