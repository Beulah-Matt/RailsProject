import React from 'react'
import styles from "./style"
import Footer from "./components/Footer"
import Navbar from './components/Navbar'
const App = () => {
  return (
    <div className = "bg-primary w-full overflow-hidden">App
      <div className={`${styles.paddingX} ${styles.flexCenter}`}>
        <div className={`${styles.boxWidth}`}>
          <Navbar />
          <Footer />

        </div>
      </div>
    </div>
  )
}

export default App
