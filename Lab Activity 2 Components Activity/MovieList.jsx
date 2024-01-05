import React from "react";
import classes from './MovieList.module.css'

class MovieList extends React.Component {
    render() {
        return(
            <>
            <ul>
                <li>Movie 1</li>
                <li>Movie 2</li>
                <li>Movie N</li>
            </ul>
            </>
        );
    }
}

export default MovieList;