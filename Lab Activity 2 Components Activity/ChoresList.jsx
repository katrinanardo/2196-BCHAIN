import React from "react";
import classes from './ChoreList.module.css'
class ChoreList extends React.Component {
    render() {
        return(
            <>
            <ul>
                <li>Clean Porch</li>
                <li>Wash Car</li>
                <li>Attend BCAHIN Class</li>
            </ul>
            </>
        );
    }
}

export default ChoreList;