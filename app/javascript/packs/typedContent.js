// Can also be included with a regular script tag
import Typed from 'typed.js';

var options = {
  // strings: ['<i>First</i> sentence.', '&amp; a second sentence.'],
  strings: [`<div class="test-typed">
    <p class="green"><span class="pink">class</span> SeekingOpportunities <span style="color: white"><</span> <i>ApplicationController</i></p>

      <p class="orange" style="margin-left: 1rem">
        After taking a leap of faith a year ago and switching careers from PR consultant to programmer, I'm now actively seeking a position as a web developer.
      </p>
      <p style="color: white; margin-left: 1rem">
        From self-teaching C (<i>yup, first choices are bold choices when you start from scratch!</i>), to following online courses on Computer Science + Python 1.01, and moving to Australia to attend Le Wagon Web Development bootcamp in Melbourne, I finally completed my training with an internship as a Software Engineer with one of India's leading providers of mobile device management solutions, ProMobi Tech.
      </p>
      <p class="blue" style="margin-left: 1rem">
        Eager to keep learning and willing to put my skills to use by joining a tech team, if any of what you're reading rings a bell, I'd be happy to chat!
      </p>
    <p class="pink">end</p>
  </div>`],
  typeSpeed: 35,
  smartBackspace: true
};

var typed = new Typed('.js-test', options);

