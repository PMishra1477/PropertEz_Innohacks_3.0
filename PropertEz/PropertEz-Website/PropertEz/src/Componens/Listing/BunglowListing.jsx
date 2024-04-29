
import banner from '../../assets/banner.png'
import bunglow  from '../../assets/bunglow.png'
import filter from '../../assets/filter-icon.png'
import flat from '../../assets/flat.png'
import { NavLink } from 'react-router-dom'
import house from '../../assets/house.png'
import srch from '../../assets/srch-icon.png'
import Dropdown from '../SortDropDown/SortDropDown'
import Card from '../Cards/Cards'
import { data } from "../../constant/HouseList";


function BunglowListing() {
    const displayBunglows = data.map((house)=>{
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
{displayBunglows}
</>
)
}

 

export default BunglowListing
