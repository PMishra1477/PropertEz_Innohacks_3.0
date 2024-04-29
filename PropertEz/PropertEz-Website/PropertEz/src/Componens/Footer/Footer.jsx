import logo from '../../assets/foot-logo.png'
import FB from '../../assets/foot-fb.png'
import IG from '../../assets/foot-ig.png'
import X from '../../assets/foot-twitter.png'
import appLink from '../../assets/getItOnGooglePlay.png'

function Footer() {
  return (
    <footer className=" bg-slate-800 flex w-full justify-around px-12 py-8 pt-12 text-white h-80 font-montserrat">
        <div className="flex flex-col justify-between">
            <img src={logo} alt="" className='h-12 ' />
            <div>
                <h1>Download the app</h1>
                <img src={appLink} alt="" className='h-12'/>
            </div>
        </div>
        
        <div className='flex gap-16'>
            <div>
                <h1 className=' mb-2 font-semibold font-montserrat text-lg tracking-wider'>Houses</h1>
                <ol className=' text-sm leading-6 font-light tracking-wider'>
                    <li>Ghaziabad</li>
                    <li>Delhi</li>
                    <li>Noida</li>
                    <li>Delhi-NCR</li>
                </ol>
            </div>
            <div>
            <h1 className=' mb-2 font-semibold font-montserrat text-lg tracking-wider'>Flats</h1>
                <ol className=' text-sm leading-6 font-light tracking-wider'>
                    <li>Ghaziabad</li>
                    <li>Delhi</li>
                    <li>Noida</li>
                    <li>Delhi-NCR</li>
                </ol>
            </div>
            <div>
            <h1 className=' mb-2 font-semibold font-montserrat text-lg tracking-wider'>Bunglows</h1>
                <ol className=' text-sm leading-6 font-light tracking-wider'>
                    <li>Ghaziabad</li>
                    <li>Delhi</li>
                    <li>Noida</li>
                    <li>Delhi-NCR</li>
                </ol>
            </div>
        </div>
        
        <div className='flex flex-col justify-between'>
            <div className='flex flex-col items-end'>
            <h1 className=' mb-2 font-semibold font-montserrat text-lg tracking-wider'>Contact Us</h1>
            <ol className=' text-sm leading-6 font-light tracking-wider'>
                <li>1800-839-8830 (Toll Free)</li>
                <li>propertez.pvt@gmail.com</li>
            </ol>
            </div>
            <div className='flex flex-col  items-end'>
                <h1 className=' mb-2 font-semibold font-montserrat text-lg tracking-wider'>Connect With Us</h1>
                <div className='flex gap-6'>
                    <img src={IG} alt="" className=' h-6 w-auto'/>
                    <img src={FB} alt="" className='h-6 w-auto'/>
                    <img src={X} alt="" className='h-6 w-auto'/>
                </div>
            </div>
        </div>
    </footer>
  )
}

export default Footer