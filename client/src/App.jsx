import {React, useState} from 'react'
import styles from "./style"
import Footer from "./components/Footer"
import Navbar from './components/Navbar'
import Home from "./components/Home"
import WatchList from "./components/WatchList"
import {Route, Routes} from "react-router-dom"


const App = () => {
const [loggedIn, setLoggedIn] = useState(false)

  return (
    <div className = "bg-primary w-full overflow-hidden">App
      <div className={`${styles.paddingX} ${styles.flexCenter}`}>
        <div className={`${styles.boxWidth}`}>
          
          <Navbar loggedIn = {loggedIn}/>
          <Routes>
            <Route path="/home" element={<Home setLoggedIn={setLoggedIn}/>}>
              {loggedIn? 
              <>
                <Route path='/userprofile' setLoggedIn={setLoggedIn}></Route>
                <Route path='favourites' element={<WatchList loggedIn={loggedIn}/>}></Route>
              </>:
              <>
                <Route path='/login' setLoggedIn={setLoggedIn}></Route>
              </>
            }

            </Route>
          </Routes>
          <Footer />

        </div>
      </div>
    </div>
  )
}

export default App
