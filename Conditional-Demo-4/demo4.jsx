import classes from './demo3.module.css'

function Red(){
    return(<h1>Stop the car!</h1>
    );
}

function Green(){
    return(<h1>Go !</h1>
    )
}

const isRed = true;

function TrafficLight(props){
    const isRed = props.isRed;
    return isRed ? <Red /> : <Green />;
}

export default function Appp(){
    return(
        <div className={`${isRed === true ?  'red': 'green'}`}>
            <TrafficLight isRed={isRed} />

        </div>
    );
}
