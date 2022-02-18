import React from './sidebar.css'
import { LineStyle, Timeline, TrendingUp } from '@material-ui/icons'

export default function Sbar() {
  return (
    <div className='sidebar'>
      <div className="sidebarWrapper">
          <div className="sidebarMenu">
            <h3 className="sidebarTitle">Dashboard</h3>
            <ul className="sidebarList">
              <li className="sidebarListItem">
                  <LineStyle/>
                  HOME
              </li>
              <li className="sidebarListItem">
                  <Timeline/>
                  HISTORY
              </li>
              <li className="sidebarListItem">
                  <TrendingUp/>
                  SALES
              </li>
            </ul>
         </div>
      </div>
    </div>
  )
}
