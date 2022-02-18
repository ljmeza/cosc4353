import Pmanagment from "./components/profileManagment/profileManagment";
import Sbar from "./components/sidebar/Sbar";
import React, { useState } from 'react'

import "./App.css"





function App() {
  const [width, setWindowWidth] = useState(0);
  const updateDimensions = () => {
    const width = window.innerWidth
    setWindowWidth(width)
  }

  return (
    <div className="background">
     
      <div className="container"> 
        <Sbar/>
          <Pmanagment/>
          </div>
      
     
     </div>
     
  );
}

export default App;
