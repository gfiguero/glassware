import React, { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";

const Maps = () => {
    const navigate = useNavigate();
    const [maps, setMaps] = useState([]);

    useEffect(() => {
        const url = "/maps.json";
        fetch(url)
            .then((res) => {
                if (res.ok) {
                    return res.json();
                }
                throw new Error("Network response was not ok.");
            })
            .then((res) => setMaps(res))
            .catch(() => navigate("/"));
    }, []);

    const allMaps = maps.map((map, index) => (
        <div key={index} className="col-md-6 col-lg-4">
            <div className="card mb-4">
                <img
                    src={map.image}
                    className="card-img-top"
                    alt={`${map.name} image`}
                />
                <div className="card-body">
                    <h5 className="card-title">{map.name}</h5>
                    <Link to={`/map/${map.id}`} className="btn custom-button">
                        View Map
                    </Link>
                </div>
            </div>
        </div>
    ));

    const noMap = (
        <div className="vw-100 vh-50 d-flex align-items-center justify-content-center">
            <h4>
                No maps yet. Why not <Link to="/new_map">create one</Link>
            </h4>
        </div>
    );

    return (
        <>
            <section className="jumbotron jumbotron-fluid text-center">
                <div className="container py-5">
                    <h1 className="display-4">Maps for every occasion</h1>
                    <p className="lead text-muted">
                        We’ve pulled together our most popular maps, our latest
                        additions, and our editor’s picks, so there’s sure to be something
                        tempting for you to try.
                    </p>
                </div>
            </section>
            <div className="py-5">
                <main className="container">
                    <div className="text-end mb-3">
                        <Link to="/map" className="btn custom-button">
                            Create New Map
                        </Link>
                    </div>
                    <div className="row">
                        {maps.length > 0 ? allMaps : noMap}
                    </div>
                    <Link to="/" className="btn btn-link">
                        Home
                    </Link>
                </main>
            </div>
        </>
    );
};

export default Maps;