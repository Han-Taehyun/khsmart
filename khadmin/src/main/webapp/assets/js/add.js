let add = {
		formNum: 0,
		init: function(){
			this.formNum = document.querySelectorAll('.input-wrapper').length-1;
			// 저장 버튼 클릭했을 경우;
			this.handleSubmit();
			this.addForm();
			this.customizeForm();
			this.disableForm();
		},
		handleSubmit: function() {
			document.form1.addEventListener('submit', (e) => {
				const res = confirm("저장하시겠습니까?");
				
				
				if(res){
					const inputs = document.querySelectorAll(".input-btn-wrapper input[type='text']");
					inputs.forEach((input, index) => {
						index++ ;
						let name = 'bogi'+index;
						input.name = name;
					});
					
					const chboxes = document.querySelectorAll('.chbox');
					chboxes.forEach((chbox, index) => {
						index++ ;
						let name = 'bogi'+index+'type';
						chbox.name = name;
					});
				
				
				
				}else{
					e.preventDefault();
				}
			})
		},
		// 문항 유형 일정표일 경우 보기 비활성화
		disableForm: function(){
			const typeSelect = document.getElementById("type1");
			typeSelect.addEventListener('change', (e) => {
				const bogiTrs = document.querySelectorAll('.bogiTr');
				if(e.target.value === '일정표'){
					bogiTrs.forEach(el => {
						// el.style.display = "none";
						el.remove();
					});
				}else{
					if(!document.querySelector('.bogiTr')){
						let tr = document.createElement('tr');
						tr.classList.add('bogiTr');
						tr.innerHTML = document.getElementById("addTemplate").innerHTML;
						
						const table = document.querySelector('#customers tbody');
						table.appendChild(tr);
						
						this.addForm();
					}
				}
			});
		},
		customizeForm: function(){
			let inputs = document.querySelectorAll(".input-wrapper input[type='text']");
			if(inputs.length > 1){
				inputs.forEach(input => {
					input.addEventListener('focus', (e) => {
						let checkboxWrapper = e.target.parentNode.children[0];
						checkboxWrapper.style.borderColor = 'rgba(31, 181, 172, 1)';
					});
					
					input.addEventListener('blur', (e) => {
						let checkboxWrapper = e.target.parentNode.children[0];
						checkboxWrapper.style.borderColor = '#999';
					});
				});
			}
		},
		addForm: function(){
			const addBtn = document.querySelector('.add-btn');
			if(addBtn){
				addBtn.addEventListener('click', (e) => {
					this.formNum++;
					
					if(this.formNum > 19){
						alert('보기는 20개까지 추가 가능합니다.');
						this.formNum--;
						return;
					}
					
					const parent = e.target.parentNode;
					parent.removeChild(e.target);
					
					let tr = document.createElement('tr');
					tr.classList.add('bogiTr');
					tr.innerHTML = document.getElementById("addTemplate").innerHTML;
					
					const table = document.querySelector('#customers tbody');
					table.appendChild(tr);
					
					this.addForm();
					this.customizeForm();
				});
			}
		},
		cancelAddBtn: function(target){
			if(this.formNum === 0) return;
			this.formNum--;
			
			let tr = target.parentNode.parentNode.parentNode.parentNode;
			tr.remove();
			
			if(target.parentNode.parentNode.children.length > 1){
				const addBtn = document.createElement('button');
				addBtn.classList.add('add-btn');
				addBtn.classList.add('btn');
				addBtn.classList.add('btn-primary');
				
				addBtn.innerText = '추가';
				
				const div = document.querySelectorAll('.input-btn-wrapper');
				const divNum = div.length;
				const lastDiv = div[divNum-1];
				
				lastDiv.appendChild(addBtn);
				this.addForm();
			}
		}
}

document.addEventListener("DOMContentLoaded", function(){
	add.init();
});