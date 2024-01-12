import classes from './demo2.module.css'

function Red(){
    return(
        <h1>Stop the car!</h1>
    );
}

function TrafficLight(props){
    const isRed = props.isRed;
    if(isRed){
        return(
            <Red />
        );
    }
}

export default function Appp(){
    return(
        <div>
            <TrafficLight isRed={true}/>

        </div>
    );
}