import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";
import Maps from "../components/Maps";

export default (
    <Router>
        <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/api/v7/maps.json" element={<Maps />} />
        </Routes>
    </Router>
);