import axios from "axios";

const API_BASE = "http://localhost:8081"; // Update for prod

export const api = axios.create({
  baseURL: API_BASE,
  timeout: 10000,
  headers: {
    "Content-Type": "application/json",
  },
});