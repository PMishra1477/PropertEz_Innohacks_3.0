
// import banner from '../../assets/banner.png'
// import bunglow  from '../../assets/bunglow.png'
// import filter from '../../assets/filter-icon.png'
// import flat from '../../assets/flat.png'
// import { NavLink } from 'react-router-dom'
// import house from '../../assets/house.png'
// import srch from '../../assets/srch-icon.png'
// import Dropdown from '../SortDropDown/SortDropDown'
// import Card from '../Cards/Cards'
// import { data } from "../../constant/HouseList";


// function HouseListing() {
//     const displayHouses = data.map((house)=>{
//         return(
//             <Card
//             key={house.id}
//             name={house.name}
//             location={house.location}
//             seating={house.seating}
//             price={house.price}
//             washrooms={house.washrooms}
//             carpetArea={house.carpetArea}
//             />
//         )
//     })

//   return (
//     <>
//     <div>
//     <div className='relative'>
//     <img className='h-[300px] w-auto mx-auto' src={banner} alt="" />
//     <div className='absolute top-12 left-36'>
//         <h1 className='text-white font-semibold tracking-wider text-3xl font-montserrat'>Search In</h1>
//         <h3 className='text-white font-semibold tracking-wider text-lg font-montserrat'>Ghaziabad</h3>
//     </div>
//     <div className='flex gap-8 absolute w-5/6 z-10 mx-32 top-44'>
//         <div className='bg-gray-200 h-full p-8 rounded-3xl basis-3/5 '>
//         <div className=" gap-3 mb-5 w-full h-10 border border-none rounded-full px-4 shadow-md bg-white flex items-center">
//             <img className='h-4 w-auto' src={srch} alt="" />
//       <input className=' outline-none focus:outline-none bg-transparent border-none h-full text-lg w-full ml-1'
//         placeholder="Type to search..."
//       />
//     </div>
//     <div className='flex gap-4 justify-between items-center mb-4'>
//     <div className='flex gap-2 bg-white rounded-full p-0.5'>
//         <NavLink to="/houses" className={({isActive})=>`${isActive?"bg-blue-400 rounded-full" : "bg-white"}`}>
//         <div className='flex justify-center items-center px-3 py-0.5 gap-2'>
//             <img className='h-4 w-auto' src={house} alt="" />
//             <p className='text-white font-normal tracking-wider text-lg font-montserrat'>Houses</p>
//         </div>
//         </NavLink>
//         <NavLink to="/flats" className={({isActive})=>`${isActive?"bg-blue-400 rounded-full" : "bg-white"}`}><div className='flex justify-center items-center px-3 py-0.5 gap-2'>
//             <img className='h-4 w-auto' src={flat} alt="" />
//             <p className='text-gray-600 font-normal tracking-wider text-lg font-montserrat'>Flats</p>
//         </div></NavLink>
//         <NavLink to="/bunglows" className={({isActive})=>`${isActive?"bg-blue-400 rounded-full" : "bg-white"}`}>
//         <div className='flex justify-center items-center px-3 py-0.5 gap-2'>
//             <img className='h-4 w-auto' src={bunglow} alt="" />
//             <p className='text-gray-600 font-normal tracking-wider text-lg font-montserrat'>Bunglows</p>
//         </div>
//         </NavLink>
//     </div>
//     <div className="w-0.5 h-10 border border-solid border-blue-gray-300 mx-4"></div>
//     <Dropdown />
//     </div>
//     <div className='flex justify-between mb-10'>
//         <div className='flex gap-5'>
//         <div className=' bg-white h-9 w-32 rounded-xl'></div>
//         <div className=' bg-white h-9 w-32 rounded-xl'></div>
//         <p className=' bg-white rounded-xl px-4 font-montserrat flex items-center'>For Sale</p>
//         </div>
//         <div className=' bg-white flex items-center px-5 rounded-xl relative right-4 '>
//             <img className=' h-4' src={filter} alt="" />
//         </div>
//     </div>
//     <div>
//         <h1 className=' text-2xl font-medium tracking-wider font-montserrat mb-5'>Popular in Ghaziabad</h1>
//     </div>
//     {displayHouses}

//         </div>
//         <div className='bg-gray-200 basis-2/5 rounded-3xl'></div>
//     </div>
//     </div>
//     </div>
//     </>
//   )
// }

 

// export default HouseListing



// import { Route, RouterProvider, createBrowserRouter, createRoutesFromElements } from 'react-router-dom'
// import ListingLayout from '../../ListingLayout'
// import HouseList from './HouseListing'
// import HouseListing from './HouseListing'
// import BunglowListing from './BunglowListing'
// import FlatListing from './FlatListing'
import Card from '../Cards/Cards'
import { data } from "../../constant/HouseList";

function HouseListing() {

console.log("HouseListing")

    const displayHouses = data.map((house)=>{
                return(
                    <Card
                    key={house.id}
                    name={house.name}
                    location={house.location}
                    seating={house.seating}
                    price={house.price}
                    washrooms={house.washrooms}
                    carpetArea={house.carpetArea}
                    />
                )
            })

    
  return (
    <>
    {displayHouses}
    </>
  )
}

export default HouseListing