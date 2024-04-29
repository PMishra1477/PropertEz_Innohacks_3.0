// import React from 'react'
import gradient from "../../assets/gradient.png"
import Rect2 from "../../assets/landingRect2.png"
import arrow from "../../assets/arrow.png"
import HouseList from "../Listing/HouseListing"



function NavCard({name}) {
  return (
    <div className='relative overflow-hidden'>
        <img src={Rect2} alt="" className='h-[180px] w-auto '/>
        <img src={gradient} alt="" className=' w-auto absolute z-20 top-0 left-0'/>
        <div className=' p-3 flex justify-center items-center h-12 w-12 rounded-full bg-white z-30 absolute top-28 left-8'>
            <a href={HouseList}>
            <img src={arrow} alt=""/>
            </a>
        </div>
        <h1 className=' font-montserrat tracking-wider text-2xl font-semibold p-3 z-30 absolute top-4 left-8'>{name}</h1>
    </div>
  )
}

export default NavCard