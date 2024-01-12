import classes from './demo3.module.css'

function Red(){
    return(
        <h1>Stop the car!</h1>
    );
}

function Green(){
    return(
        <h1>Go !</h1>
    )
}

function TrafficLight(props){
    const isRed = props.isRed;
    if(isRed){
        return(
            <Red />
        );
    }
    return(
        <Green />
    )
}

export default function Appp(){
    return(
        <div>
            <TrafficLight isRed={false}/>

        </div>
    );
}