import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import './index.css'
import {BrowserRouter, Route, Router, RouterProvider, Routes, createBrowserRouter, createRoutesFromElements } from 'react-router-dom'
import Landing from './Componens/Landing/Landing.jsx'
import ListingLayout from './ListingLayout.jsx'
import FlatListing from './Componens/Listing/FlatListing.jsx'
import BunglowListing from './Componens/Listing/BunglowListing.jsx'
import HouseListing from './Componens/Listing/HouseListing.jsx'
// import HouseListing from './Componens/Listing/HouseListing.jsx'
// import FlatList from './Componens/Listing/FlatListing.jsx'
// import BunglowList from './Componens/Listing/BunglowListing.jsx'
// import ListingLayout from './ListingLayout.jsx'


// const router=createBrowserRouter(
  // createRoutesFromElements(
    
  // )
// )
ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
   <BrowserRouter>
    <Routes>
    <Route path="/" element={<App/>}>
      <Route path="" element={<Landing/>}>
      </Route>
    </Route>
        <Route path="/listing" element={<ListingLayout/>}>
          <Route path="/listing/house" element={<HouseListing/>}/>
          <Route path="/listing/flat" element={<FlatListing/>}/>
          <Route path="bunglow" element={<BunglowListing/>}/>
        </Route>
   </Routes>
    </BrowserRouter>
  </React.StrictMode>,
)





// import React from 'react';
// import ReactDOM from 'react-dom';
// import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
// import Landing from './Componens/Landing/Landing.jsx';
// import HouseList from './Componens/Listing/HouseListing.jsx';
// import FlatList from './Componens/Listing/FlatListing.jsx';
// import BunglowList from './Componens/Listing/BunglowListing.jsx';
// import ListingLayout from './ListingLayout.jsx';
// import App from './App.jsx';
// import './index.css';

// const router = (
//   <Router>
//     <Routes>
//       <Route path="/" element={<App />}>
//         <Route path="" element={<Landing />}>
//           <Route path="listing" element={<ListingLayout />}>
//             <Route path="house" element={<HouseList />} />
//             <Route path="flat" element={<FlatList />} />
//             <Route path="bunglow" element={<BunglowList />} />
//           </Route>
//         </Route>
//       </Route>
//     </Routes>
//   </Router>
// );

// ReactDOM.createRoot(document.getElementById('root')).render(
//   <React.StrictMode>
//     {router}
//   </React.StrictMode>
// );
