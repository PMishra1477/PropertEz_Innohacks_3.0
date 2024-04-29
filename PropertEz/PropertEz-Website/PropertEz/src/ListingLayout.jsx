
import banner from './assets/banner.png'
import { useState } from 'react'
import filter from './assets/filter-icon.png'
import { NavLink, Outlet } from 'react-router-dom'
import house from './assets/house.png'
import srch from './assets/srch-icon.png'
import Dropdown from './Componens/SortDropDown/SortDropDown'
import Card from './Componens/Cards/Cards'
import { data } from "./constant/HouseList";
import Header from './Componens/Header/Header'
import Footer from './Componens/Footer/Footer'
import GoogleMap from './Componens/Map/Map'
// import { Outlet } from 'react-router-dom'


function ListingLayout() {


  return (
    <>
    <Header/>
    <div>
    <div className='relative'>
    <img className='h-[300px] w-auto mx-auto' src={banner} alt="" />
    <div className='absolute top-12 left-36'>
        <h1 className='text-white font-semibold tracking-wider text-3xl font-montserrat'>Search In</h1>
        <h3 className='text-white font-semibold tracking-wider text-lg font-montserrat'>Ghaziabad</h3>
    </div>
    <div className='flex gap-8 absolute w-5/6 z-10 mx-32 top-44'>
        <div className='bg-gray-200 h-full p-8 rounded-3xl basis-3/5 '>
        <div className=" gap-3 mb-5 w-full h-10 border border-none rounded-full px-4 shadow-md bg-white flex items-center">
            <img className='h-4 w-auto' src={srch} alt="" />
      <input className=' outline-none focus:outline-none bg-transparent border-none h-full text-lg w-full ml-1'
        placeholder="Type to search..."
      />
    </div>
    <div className='flex gap-4 justify-between items-center mb-4'>
    <div className='flex gap-2 bg-white rounded-full p-0.5'>
        <NavLink to="/listing/house" className={({isActive})=>`${isActive?"bg-blue-400  text-white stroke-white" : "bg-white text-gray-600 stroke-gray-600"} rounded-full`}>
        <div className='flex justify-center items-center px-3 py-0.5 gap-2 rounded-full'>
            

        <svg width="18" height="18" viewBox="0 0 23 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M12.6219 0.449811L12.7501 0.551807L22.3293 8.53861L21.3019 9.42548L19.9828 8.32591L19.9836 16.7561C19.9836 17.4117 19.3856 17.949 18.6272 17.9963L18.518 18H3.86206C3.08969 18 2.45655 17.4925 2.40013 16.8488L2.39646 16.7561L2.39573 8.32653L1.07816 9.42548L0.0507812 8.53861L9.61964 0.559892C10.4352 -0.146618 11.7506 -0.1858 12.6219 0.449811ZM10.7269 1.3852L10.6565 1.4393L3.86132 7.10445L3.86206 16.7561L7.52531 16.7555L7.52604 10.5369C7.52604 9.88135 8.124 9.34401 8.88245 9.29612L8.99163 9.29301H13.3884C14.1608 9.29301 14.7939 9.8005 14.8503 10.4442L14.854 10.5369L14.8533 16.7555L18.518 16.7561L18.5173 7.10382L11.703 1.42189C11.4362 1.19986 11.02 1.18617 10.7269 1.3852ZM13.3884 10.5369H8.99163L8.9909 16.7555H13.3877L13.3884 10.5369Z"
strokeWidth="1" fill="white"/>
</svg>


            <p className=' font-normal tracking-wider text-lg font-montserrat rounded-full'>Houses</p>
        </div>
        </NavLink>

        <NavLink to="/listing/flat" className={({isActive})=>`${isActive?"bg-blue-400  text-white stroke-white" : "bg-white text-gray-600 stroke-gray-600"} rounded-full`}>
        <div className='flex justify-center items-center px-3 py-0.5 gap-2 '>

        <svg width="21" height="20" viewBox="0 0 21 20" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path
        d="M2.93968 1H10.6984C11.2128 1 11.7062 1.18964 12.07 1.52721C12.4337 1.86477 12.6381 2.32261 12.6381 2.8V19H2.93968C2.42525 19 1.93188 18.8104 1.56812 18.4728C1.20436 18.1352 1 17.6774 1 17.2V2.8C1 2.32261 1.20436 1.86477 1.56812 1.52721C1.93188 1.18964 2.42525 1 2.93968 1Z"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M12.6382 8.2002H18.4572C18.9717 8.2002 19.465 8.38984 19.8288 8.7274C20.1925 9.06497 20.3969 9.52281 20.3969 10.0002V17.2002C20.3969 17.6776 20.1925 18.1354 19.8288 18.473C19.465 18.8106 18.9717 19.0002 18.4572 19.0002H12.6382"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M3.90942 4.6001H4.87926"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M7.78882 4.6001H9.7285"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M3.90942 8.2002H4.87926"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M7.78882 8.2002H9.7285"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M3.90942 11.7998H4.87926"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M7.78882 11.7998H9.7285"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M3.90942 15.3999H4.87926"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M7.78882 15.3999H9.7285"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M15.5476 11.7998H17.4873"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path
        d="M15.5476 15.3999H17.4873"
        strokeWidth="1.2"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
    </svg>       
 <p className=' font-normal tracking-wider text-lg font-montserrat'>Flats</p>
        </div>
        </NavLink>
        <NavLink to="/listing/bunglow" className={({isActive})=>`${isActive?"bg-blue-400 text-white stroke-white " : "bg-white text-gray-600 stroke-gray-600"} rounded-full strokeWidth-1.2`}>
        <div className='flex justify-center items-center px-3 py-0.5 gap-2'>
            

        <svg width="30" height="18" viewBox="0 0 30 18" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path
        d="M29.9958 9.97329L28.784 2.8459C28.7556 2.67885 28.5909 2.55506 28.3969 2.55506H11.2174V2.04418H11.413C11.6291 2.04418 11.8043 1.89161 11.8043 1.70349V0.340697C11.8043 0.152576 11.6291 0 11.413 0H8.54345C8.32738 0 8.15214 0.152576 8.15214 0.340697V1.70349C8.15214 1.89161 8.32738 2.04418 8.54345 2.04418H8.7391V2.55506H1.60301C1.40906 2.55506 1.24432 2.67879 1.21588 2.8459L0.00420925 9.97329C-0.0124212 10.0713 0.0207092 10.1707 0.0950571 10.2457C0.169405 10.3207 0.277535 10.3638 0.391274 10.3638H1.6154V17.6593C1.6154 17.8474 1.79064 18 2.00671 18H27.9932C28.2093 18 28.3845 17.8474 28.3845 17.6593V10.3638H29.6087C29.7225 10.3638 29.8307 10.3207 29.905 10.2457C29.9793 10.1707 30.0124 10.0713 29.9958 9.97329ZM8.93475 0.681451H11.0217V1.36285H8.93475V0.681451ZM10.4348 2.10085V4.20182H9.52171V2.10085H10.4348ZM2.39801 10.3639H8.86555L8.43532 10.8176C8.29771 10.9628 8.32132 11.1775 8.48795 11.2973C8.65471 11.4171 8.90129 11.3966 9.03884 11.2515L9.39127 10.8797V17.3187H2.39801V10.3639ZM15 4.96407L19.8261 10.0543V17.3186H10.1739V10.0543L15 4.96407ZM27.6019 17.3187H20.6087V10.8797L20.9612 11.2515C21.0386 11.3331 21.1504 11.3753 21.2631 11.3753C21.3509 11.3753 21.4391 11.3497 21.512 11.2973C21.6787 11.1775 21.7022 10.9628 21.5647 10.8176L21.1344 10.3639H27.6019V17.3187ZM27.9932 9.6825H20.4884L15.3017 4.21204C15.2273 4.13368 15.1167 4.08825 15 4.08825C14.8832 4.08825 14.7726 4.13368 14.6982 4.21204L9.51153 9.6825H2.00671H0.844796L1.94071 3.23651H8.7391V4.54252C8.7391 4.73064 8.91434 4.88321 9.1304 4.88321H10.8261C11.0421 4.88321 11.2174 4.73064 11.2174 4.54252V3.23651H28.0594L29.1553 9.6825H27.9932Z"
        strokeWidth="0.5"
      />
      <path
        d="M7.80965 12.208H4.02705C3.81098 12.208 3.63574 12.3606 3.63574 12.5487V14.7065C3.63574 14.8946 3.81098 15.0472 4.02705 15.0472H7.80965C8.02572 15.0472 8.20096 14.8946 8.20096 14.7065V12.5487C8.20096 12.3605 8.02578 12.208 7.80965 12.208ZM7.41835 13.2869H6.30965V12.8894H7.41835V13.2869ZM5.52705 12.8894V13.2869H4.41835V12.8894H5.52705ZM4.41835 13.9683H5.52705V14.3658H4.41835V13.9683ZM6.30965 14.3658V13.9683H7.41835V14.3658H6.30965Z"
        strokeWidth="0.5"
      />
      <path
        d="M22.1901 15.0472H25.9727C26.1888 15.0472 26.364 14.8946 26.364 14.7065V12.5487C26.364 12.3606 26.1888 12.208 25.9727 12.208H22.1901C21.9741 12.208 21.7988 12.3606 21.7988 12.5487V14.7065C21.7988 14.8946 21.974 15.0472 22.1901 15.0472ZM22.5814 13.9683H23.6901V14.3658H22.5814V13.9683ZM24.4727 14.3658V13.9683H25.5814V14.3658H24.4727ZM25.5814 13.2869H24.4727V12.8894H25.5814V13.2869ZM23.6901 12.8894V13.2869H22.5814V12.8894H23.6901Z"
        strokeWidth="0.5"
      />
      <path
        d="M11.2424 14.9339H14.1274C14.3435 14.9339 14.5187 14.7813 14.5187 14.5932V12.4354C14.5187 12.2473 14.3435 12.0947 14.1274 12.0947H11.2424C11.0263 12.0947 10.8511 12.2473 10.8511 12.4354V14.5932C10.8511 14.7813 11.0262 14.9339 11.2424 14.9339ZM11.6337 13.855H12.2936V14.2525H11.6336V13.855H11.6337ZM13.0762 14.2525V13.855H13.7361V14.2525H13.0762ZM13.7361 13.1736H13.0762V12.7761H13.7361V13.1736ZM12.2936 12.7761V13.1736H11.6336V12.7761H12.2936Z"
        strokeWidth="0.5"
      />
      <path
        d="M15.4163 12.4354V14.5932C15.4163 14.7813 15.5915 14.9339 15.8076 14.9339H18.6926C18.9086 14.9339 19.0839 14.7813 19.0839 14.5932V12.4354C19.0839 12.2473 18.9086 12.0947 18.6926 12.0947H15.8076C15.5914 12.0947 15.4163 12.2472 15.4163 12.4354ZM16.1989 13.855H16.8588V14.2525H16.1989V13.855ZM17.6414 14.2525V13.855H18.3013V14.2525H17.6414ZM18.3013 13.1736H17.6414V12.7761H18.3013V13.1736ZM16.8588 12.7761V13.1736H16.1989V12.7761H16.8588Z"
        strokeWidth="0.5"
      />
      <path
        d="M6.50336 4.31543H5.0571C4.86033 4.31543 4.69416 4.44262 4.66899 4.61257L4.30742 7.05424C4.29301 7.15139 4.32738 7.24923 4.40166 7.32276C4.47594 7.3963 4.58303 7.43849 4.69553 7.43849H6.50336C6.71942 7.43849 6.89466 7.28591 6.89466 7.09779V4.65613C6.89466 4.46795 6.71942 4.31543 6.50336 4.31543ZM6.11205 6.75709H5.14051L5.40118 4.99682H6.11205V6.75709Z"
        strokeWidth="0.5"
      />
      <path
        d="M25.3309 4.61257C25.3057 4.44262 25.1395 4.31543 24.9428 4.31543H23.4965C23.2805 4.31543 23.1052 4.46801 23.1052 4.65613V7.09779C23.1052 7.28591 23.2805 7.43849 23.4965 7.43849H25.3044C25.4169 7.43849 25.5239 7.3963 25.5982 7.32276C25.6725 7.24923 25.7068 7.15139 25.6925 7.05424L25.3309 4.61257ZM23.8878 6.75709V4.99682H24.5986L24.8593 6.75709H23.8878Z"
        strokeWidth="0.5"
      />
      <path
        d="M15 9.82315C15.7911 9.82315 16.4348 9.26276 16.4348 8.57393C16.4348 7.8851 15.7911 7.32471 15 7.32471C14.2088 7.32471 13.5652 7.8851 13.5652 8.57393C13.5652 9.26276 14.2088 9.82315 15 9.82315ZM15 8.0061C15.3596 8.0061 15.6521 8.26083 15.6521 8.57393C15.6521 8.88703 15.3596 9.14176 15 9.14176C14.6404 9.14176 14.3478 8.88703 14.3478 8.57393C14.3478 8.26083 14.6404 8.0061 15 8.0061Z"
        strokeWidth="0.5"
      />
    </svg>


            <p className=' font-normal tracking-wider text-lg font-montserrat'>Bunglows</p>
        </div>
        </NavLink>
    </div>
    <div className="w-0.5 h-10 border border-solid border-blue-gray-300 mx-4"></div>
    <Dropdown />
    </div>
    <div className='flex justify-between mb-10'>
        <div className='flex gap-5'>
        <div className=' bg-white h-9 w-32 rounded-xl'></div>
        <div className=' bg-white h-9 w-32 rounded-xl'></div>
        <p className=' bg-white rounded-xl px-4 font-montserrat flex items-center'>For Sale</p>
        </div>
        <div className=' bg-white flex items-center px-5 rounded-xl relative right-4 '>
            <img className=' h-4' src={filter} alt="" />
        </div>
    </div>
    <div>
        <h1 className=' text-2xl font-medium tracking-wider font-montserrat mb-5'>Popular in Ghaziabad</h1>
    </div>
    <Outlet/>

        </div>
        {/* <div className='bg-gray-200 basis-2/5 rounded-3xl'></div> */}
        <GoogleMap/>
    </div>
    </div>
    </div>
    </>
  )
}

 

export default ListingLayout
