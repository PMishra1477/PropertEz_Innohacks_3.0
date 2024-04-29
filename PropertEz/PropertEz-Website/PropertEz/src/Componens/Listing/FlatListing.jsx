import Card from '../Cards/Cards'
import { data } from "../../constant/HouseList";

function FlatListing() {
    const displayFlats = data.map((house)=>{
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
    {displayFlats}
    </>
  )
}

export default FlatListing