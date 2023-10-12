import React from "react";
import { Link } from "react-router-dom";

export default () => (
    <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
        <div className="jumbotron jumbotron-fluid bg-transparent">
            <div className="container secondary-color">
                <h1 className="display-4">AIM Manager R1</h1>
                <p className="lead">
                    A fine list of resources for the best management team.
                </p>
                <hr className="my-4" />
                <Link to="api/v7/maps.json" className="btn btn-lg custom-button" role="button">Ver Plazas</Link>
            </div>
        </div>
    </div>
);