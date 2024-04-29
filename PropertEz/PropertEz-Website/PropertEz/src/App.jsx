// import { useState } from 'react'

import './App.css'
import Header from './Componens/Header/Header'
import Footer from './Componens/Footer/Footer'
import { Outlet } from 'react-router-dom'

function App() {
  return (
  <>
  <Header/>
  <Outlet/>
  <Footer/>
  </>
  )
}

export default App
