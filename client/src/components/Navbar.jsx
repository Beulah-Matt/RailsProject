import React, { useState } from 'react'
import {NavLink} from 'react-router-dom'
import {menu, close} from "../assets/assetsExports"


const Navbar = ({loggedIn}) => {
 
  return (
    <div className='className="w-full flex py-6 justify-between items-center navbar"'>
      <ul className="list-none sm:flex hidden justify-end items-center flex-1">
        <NavLink to='/'>
          
        </NavLink>
      </ul>
    </div>
  )
}

export default Navbar