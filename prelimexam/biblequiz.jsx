import React from 'react';
import './app.css';

const [isVisible, setVisible] = useState(true);

const onClick = () => setVisible(!isVisible);

function Correct() {
  return <p className="green">Correct!</p>;
}

function Incorrect() {
  return <p className="red">Incorrect!</p>;
}

const isCorrect = true;

function CorrectorIncorrect(props) {
  const isCorrect = props.isCorrect;
  //return isCorrect ? <Correct /> : <Incorrect />
  if (isCorrect === true){
    return <Correct/>
  }
  if (isCorrect === false){
    return <Incorrect />
  }
  if (isCorrect === null){
    return null
  }

}

export default function BibleQuiz() {
  return (
    <div>
      <h3>The Bible Quiz</h3>
      <p>The Bible consists of the Old and New Testaments</p>
      <CorrectorIncorrect isCorrect={null}/>
      <p>Moses led the Israelites out of Egypt</p>
      <CorrectorIncorrect isCorrect={null}/>
      <p>The Sermon on the Mount is found in the Book of Luke.</p>
      <CorrectorIncorrect isCorrect={null}/>

      {/* <button onClick={''}>Show Answer</button> */}
    </div>
  );
}
