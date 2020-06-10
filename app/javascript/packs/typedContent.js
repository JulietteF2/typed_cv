// Can also be included with a regular script tag
import Typed from 'typed.js';

var options = {
  strings: [`<span class="pink">class</span> SeekingOpportunities <span style="color: white"><</span> <i>ApplicationController</i><p></p>
  <span class="green" style="margin-left: 1rem"><span class="pink">def</span> intro</span><p></p>
  <span style="margin-left: 2rem; color: white">
    After a drastic U-Turn to switch career towards programming and after a year</span>
  <span style="margin-left: 2rem; color: white">of training, I'm now actively seeking a position as a <span class="orange">web developer</span>.
  </span><p></p>
  <span class="pink" style="margin-left: 1rem">end</span><p></p>
  </br>
  <span style="color: #74705C;"><i># Let's stop the typing effect for a bit...</i></span> &nbsp;&nbsp;&nbsp; <span class="blue" id="toggle"><i><a href="">click here to toggle the rest.</a></i></span>`],

  typeSpeed: 30,
  smartBackspace: false,
  showCursor: true,
  cursorChar: '|',
  autoInsertCss: true,
  onComplete: (self) => {
    createToggle();
  }
};

const createToggle = () => {
  document.getElementById('toggle').addEventListener('click', (e) => {
    e.preventDefault();
    removeCursor();
    document.getElementById('toggled').classList.remove('d-none');
  })
}

const removeCursor = () => {
  document.querySelector('.typed-cursor').innerHTML = ''
}

var typed = new Typed('#intro', options);

