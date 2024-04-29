// import React from 'react'
// import gradient from "../assets/gradient.png"
// import Rect1 from "../../assets/landingRect1.png"
import banner from "../../assets/landingBanner.png"
import portrait from "../../assets/landingPortrait.png"
import correct from "../../assets/correct.png"
// import Rect2 from "../assets/landingRect2.png"
// import arrow from "../assets/arrow.png"
import NavCard from '../NavCard/NavCard'
import srch from '../../assets/srch-icon.png'
import { Link } from "react-router-dom"
import Card from "../Cards/Cards"
import GoogleMap from "../Map/Map"
function Landing() {
  return (
    <div className=" font-montserrat">
    <h1 className=" leading-snug mb-5 text-center font-extrabold text-6xl text-gray-900 tracking-wider">
      VENTURE INTO THE <br /> VIRTUAL
    </h1>
    <p className=" leading-7 mb-5 text-center">Unlock the Door to your Ideal Property.<br />Discover Your Next Home Today</p>
    <div className="mb-44 w-3/5 mx-auto h-12 border border-none rounded-full pl-6 pr-1 shadow-md bg-white flex items-center">
            <img className='h-4 w-auto mr-3' src={srch} alt="" />
      <input className='outline-none focus:outline-none bg-transparent border-none h-full text-lg w-full ml-1'
        placeholder="Search your Locality"
      />
      <button className=" font-medium bg-blue-400 text-white m-0 px-8 py-2 rounded-full">Search</button>
    </div>
    <img src={banner} alt="" className=" mb-44"/>
    <div className="flex w-9/12 mx-auto gap-40 mb-16">
      <div className="flex flex-col justify-between">
        <h1 className=" font-bold text-5xl tracking-wider">WHY DO YOU  <br />CHOOSE US</h1>
        <div className="flex flex-col gap-5">
          <div className="flex gap-3">
            <img src={correct} className=" h-8" alt="" />
            <div>
              <h1 className=" font-medium text-2xl tracking-wider">Affordable Prices</h1>
              <p className=" text-justify text-gray-950">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper lacinia est, ac eleifend orci commodo at. Vestibulum auctor lectus non sem pretium tempor. Duis tempus risus id </p>
            </div>
          </div>
          <div className="flex gap-3">
            <img src={correct} className=" h-8" alt="" />
            <div>
              <h1 className=" font-medium text-2xl tracking-wider">Virtual Reality</h1>
              <p className=" text-justify text-gray-950">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper lacinia est, ac eleifend orci commodo at. Vestibulum auctor lectus non sem pretium tempor. Duis tempus risus id </p>
            </div>
          </div>
          <div className="flex gap-3">
            <img src={correct} className=" h-8" alt="" />
            <div>
              <h1 className=" font-medium text-2xl tracking-wider">Customized Interior</h1>
              <p className="text-gray-950 text-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper lacinia est, ac eleifend orci commodo at. Vestibulum auctor lectus non sem pretium tempor. Duis tempus risus id </p>
            </div>
          </div>
        </div>
      </div>

      <img src={portrait}  className=" h-[550px] w-auto" alt="" />
    </div>
    <hr className=' w-11/12 mx-auto bg-neutral-300 h-0.5 mb-16' />
    <div className="flex justify-center gap-20 mb-16">
      <Link to="/listing/house"><NavCard name="Houses"/></Link>
      <Link to="/listing/flat"><NavCard name="Flats"/></Link>
      <Link to="/listing/bunglow"><NavCard name="Bunglows"/></Link>
    </div>
    <hr className=' w-11/12 mx-auto bg-neutral-300 h-0.5 mb-16' />
    <h1 className=" leading-snug text-center font-extrabold text-5xl text-gray-900 tracking-wider mb-12">FEATURED PROPERTIES</h1>
    <div className="flex justify-center gap-12 mb-16">
      <div className="basis-3/5">
        <Card name="White House PG" price="20 Lakhs" location="Oppo. KIET Group of Institutions" seating="3" washrooms="1" carpetArea="1000"/>
        <Card name="Muskan PG" price="18 Lakhs" location="Near KIET Group of Institutions" seating="3" washrooms="3" carpetArea="9600"/>
        <Card name="Megha Boy's PG" price="22 Lakhs" location="Near KIET Group of Institutions" seating="3" washrooms="2" carpetArea="1200"/>
      </div>
      <GoogleMap/>
    </div>
    </div>
  )
}


export default Landing