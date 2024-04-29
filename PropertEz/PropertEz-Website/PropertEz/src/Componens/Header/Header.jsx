import { useState } from 'react'
import logo from '../../assets/logo.png'
import bell from '../../assets/bell.png'
import fav from '../../assets/fav.png'


function Header() {
  const [count, setCount] = useState(0)

  return (
    <>
    <div className='flex justify-between mt-10 px-16 box-border mb-16 font-montserrat'>
        <img className='h-14 w-auto' src={logo} alt="" />
        {/* <div className='flex flex-col text-black justify-center items-center'>
            <h1 className='font-semibold text-3xl'>"Venture into the Virtual"</h1>
            <p>Discover your next home today</p>
        </div> */}
        <div className='flex gap-3 h-6 w-auto relative top-2'>
            <img src={bell} alt="bell" />
            <img src={fav} alt="" />
        </div>
    </div>
    {/* <hr className=' w-full bg-neutral-300 h-0.5 mb-10' /> */}
    </>
  )
}

export default Header
