let prev = {
  currentNum: 0,
  percent: 0,
  data: {},
  init: function () {
    // 데이터 처리
    this.handleData();
    
    this.openModal();
    this.clickPrevBtn();
    this.clickNextBtn();
    this.clickStartBtn();
  },
  handleProgressBar: function(percent) {
	  let progress = $('#progress').LineProgressbar({
          percentage: percent
      });
  },
  handleData: function() {
	  const xhr = new XMLHttpRequest();	
	  xhr.addEventListener('load', () => {
	  let res = xhr.responseText;
	  res = JSON.parse(res);
	  console.log(res);
	  
	  let items = res.items;
	    items.forEach((el) => {
	      el.bogiList.forEach((el2) => {
	        el2.type1 = el.type1;
	        el2.odrno = el.odrno;
	      });
	    });
	    
	    this.data = items;
	  });
	  
	 let svyno = document.getElementById("svyno").value;
	    	
	 xhr.open("GET", "api/surveypools?svyno="+svyno);
	 xhr.send();
	
  },
  openModal: function(){
	  const cs = document.querySelectorAll('.img-container img');
	  cs.forEach(el => {
		  el.addEventListener('click', () => {
			  document.querySelector('.modal').style.display = 'flex';
			  document.querySelector('.modal-back').style.display = 'flex';
		  });
	  })
  },
  closeModal: function (target) {
    target.parentNode.parentNode.parentNode.style.display = 'none';
    document.querySelector('.modal-back').style.display = 'none';
  },
  handleBtns: function () {
    const modalContent = document.querySelector('.modal-content');

    if (this.currentNum !== 0) {
      modalContent.classList.remove('intro');
    } else {
      modalContent.classList.add('intro');
    }
  },
  registerHandlebars: function () {
    Handlebars.registerHelper('essay', (type1, bogiType, odrno, bogi) => {
      if (type1 === '객관식 단일') {
        if (bogiType === 'N') {
          return `<li class="bogi-item"><label><input type='radio' name='r${odrno}' value='${odrno}:${bogi}' onclick='chkVal(this.value)'><span>${bogi}</span></label></li>`;
        } else {
          return `<li class="bogi-item"><label><input type='radio' name='r${odrno}' value='${odrno}:${bogi}' ><span>${bogi}</span></label>
        <div><input type="text" placeholder="직접입력" id="text${odrno}" name='text${odrno}' onblur='chkVal3(this.value,\"${odrno}:\")'></div>
      </li>`;
        }
      } else if (type1 === '객관식 복수') {
        if (bogiType === 'N') {
          return `<li class="bogi-item"><label><input type='checkbox' name='c${odrno}' value='${odrno}:${bogi}'" onclick='chkVal2(this.checked,this.value)'><span>${bogi}</span></label></li>`;
        } else {
          return `<li class="bogi-item"><label><input type='checkbox' name='c${odrno}' value='${odrno}:${bogi}' ><span>${bogi}</span></label>
        <div><input type="text" placeholder="직접입력" id="text${odrno}" name='text${odrno}' onblur='chkVal3(this.value,\"${odrno}:\")'></div>
      </li>`;
        }
      }  else {
       // 개인 정보
        return `<li><label>${bogi}: <input type='text'></label></li>`;
      }
    });
  },
  clickStartBtn: function () {
    const startBtn = document.querySelector('.start-btn');
    startBtn.addEventListener('click', (e) => {
      e.preventDefault();
      this.currentNum++;

      this.handleBtns();
      this.registerHandlebars();

      let svTemplate = document.getElementById('svTemplate').innerText;
      bindTemplate = Handlebars.compile(svTemplate);

      let survey = this.data[this.currentNum - 1];

      let resultHTML = bindTemplate(survey);

      const form = document.querySelector('.form-wrap');
      form.innerHTML = resultHTML;
      
      this.handleProgressBar(0);
    });
  },
  clickPrevBtn: function () {
    const prevBtn = document.querySelector('.prev-btn');
    prevBtn.addEventListener('click', (e) => {
      e.preventDefault();
      e.stopImmediatePropagation();
      const form = document.querySelector('.form-wrap');
      const totalNum = this.data.length;
      
      this.currentNum--;
      
      let percent = (this.currentNum / (totalNum+2)) * 100;
      this.handleProgressBar(percent);

      const nextBtn = document.querySelector('.next-btn');
      nextBtn.style.display = 'inline-block';

      if (this.currentNum === 0) {
        const introTemplate = document.getElementById('introTemplate')
          .innerText;
        form.innerHTML = introTemplate;

        const modalContent = document.querySelector('.modal-content');

        modalContent.classList.add('intro');

        this.clickStartBtn();

        return;
      }

      let survey = this.data[this.currentNum - 1];
      
      let resultHTML = bindTemplate(survey);

      form.innerHTML = resultHTML;
    });
  },
  clickNextBtn: function () {
    const nextBtn = document.querySelector('.next-btn');
    nextBtn.addEventListener('click', (e) => {
      e.preventDefault();
      e.stopImmediatePropagation();

      const form = document.querySelector('.form-wrap');
      const totalNum = this.data.length;

      this.currentNum++;
      
      let percent = (this.currentNum / (totalNum+2)) * 100;
      this.handleProgressBar(percent);

      // 마지막
      if (totalNum+2 === this.currentNum) {
        form.innerHTML =
          '<h2>설문조사가 완료되었습니다.<br/>수고하셨습니다!</h2></div>';
        e.target.style.display = 'none';
        document.querySelector('.prev-btn').style.display = 'none';

        return;
      }
      
      if(totalNum+1 === this.currentNum){
    	  form.innerHTML = 
    		  
    		  `<h2>기본 정보를 입력하시면<br/>여행사의 견적을 보내드립니다.</h2>
    		  <div class="email-wrapper">
    		  	<label><input type="email" id="email" name="email" placeholder="이메일" /></label>
				<label><input type="email" id="username" name="username" placeholder="이름" /></label>
    		  </div>`;
    	  
    	  return;
      }

      let survey = this.data[this.currentNum - 1];

      let resultHTML = bindTemplate(survey);

      form.innerHTML = resultHTML;
    });
  },
};

document.addEventListener('DOMContentLoaded', function () {
  prev.init();
});
