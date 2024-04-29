import { useState } from 'react';

function Dropdown() {
  // State to store the selected value
  const [selectedOption, setSelectedOption] = useState('');

  // Function to handle change in dropdown selection
  const handleSelectChange = (event) => {
    setSelectedOption(event.target.value);
  };

  return (
    <div>
      <select id="dropdown" value={selectedOption} onChange={handleSelectChange} className=" outline-none focus:outline-none  border border-gray-300 rounded-3xl py-2 px-4 w-40 font-montserrat">
        <option value="">Sort By</option>
        <option value="option1">Sort By Price: Low to High</option>
        <option value="option2">Sort By Price: High to Low</option>
        <option value="option3">Sort by Carpet Area</option>
      </select>
    </div>
  );
}

export default Dropdown;
