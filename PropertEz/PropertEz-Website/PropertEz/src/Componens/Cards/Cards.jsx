import ARView from '../../assets/360.png'
import bedroom from '../../assets/Bedroom.png'
import area from '../../assets/carpetArea.png'
import flatLogo from '../../assets/icon.png'
import stars from '../../assets/stars.png'
import washroom from '../../assets/washroom.png'
import fav from '../../assets/fav.png'

function Card({name, price, location, seating, washrooms, carpetArea}){
    return(
        <>
        <div className='flex w-full gap-8 font-montserrat tracking-wider bg-white p-2 px-3 pr-5 rounded-xl mb-5'>
            <img src={flatLogo} alt="" className='h-52' />
            <div className='flex flex-col w-full justify-between py-2'>
                <div>
                    <div className='flex justify-between'>
                    <h1 className='  text-2xl font-semibold'>{name}</h1>
                    <img src={stars} alt="" className='h-8 w-auto'/>
                </div>

                <p className='text-gray-500 font-semibold'>{location}</p>
                </div>
                
                <div className='flex justify-between'>
                    <div className='flex gap-3'>
                        <div className=' bg-blue-100 flex justify-center items-center border border-blue-500 rounded-lg gap-3 px-3 py-0.5'>
                            <img src={bedroom} alt="" className='h-4'/>
                            {seating}
                        </div>
                        <div className=' bg-blue-100 flex justify-center items-center border border-blue-500 rounded-lg gap-3 px-3 py-0.5'>
                            <img src={washroom} alt="" className='h-4'/>
                            {washrooms}
                        </div>
                        <div className=' bg-blue-100 flex justify-center items-center border border-blue-500 rounded-lg gap-3 px-3'>
                            <img src={area} alt="" className='h-4'/>
                            {carpetArea} sqft.
                        </div>
                    </div>
                    <img src={fav} alt="" className='h-6' />
                </div>
                
                <div className='flex justify-between'>
                    <div className='flex flex-col'>
                        <p className=' text-gray-500 font-montserrat font-semibold text-xs'>Starts from</p>
                        <h1 className='font-montserrat font-semibold text-xl tracking-wider'>Rs. {price}</h1>
                    </div>

                    <div className='flex gap-4'>
                        <button className=' text-blue-400 text-lg font-montserrat tracking-wider border font-medium border-blue-400 rounded-lg px-2 h-10'>Book Now</button>
                        <button className=' text-blue-400 gap-2 text-lg font-montserrat tracking-wider border font-medium border-blue-400 rounded-lg px-2 flex h-10 justify-center items-center'>
                            <img src={ARView} className='h-3' alt="" />
                            <p>VR</p>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        </>
    )
}

export default Card