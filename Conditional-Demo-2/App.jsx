import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './components/hello'
import Welcome from './components/welcome'
import BookList from './components/BookList'
import ChoreList from './components/ChoresList'
import MovieList from './components/MovieList'
import Greeting from './components/Greetings'
import { ArrowGreeting } from './components/Arrow Greeting'
import ShinyButton from './components/ShinyButton'
import Appp from './components/demo2'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
    < Appp />
    </>
  )
}

export default App