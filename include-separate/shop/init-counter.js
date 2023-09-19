var initCounter = (function(){
	var objCounter = document.querySelectorAll(".js-counter");
	if(objCounter){
		objCounter.forEach(function(el) {
			el.addEventListener("click", function(e){
				var objInput = e.target.parentNode.querySelector('.tt-counter__input'),
					getValue = parseInt(objInput.value);

				if(e.target.classList.contains('tt-btn-minus')){
					setValue('minus', objInput, getValue);
				};
				if(e.target.classList.contains('tt-btn-plus')){
					setValue('plus', objInput, getValue);
				};
			});
			function setValue(action,objInput,getValue){
				if(action === "minus"){
					var newValue = getValue - 1;
					objInput.value = newValue;
				};
				if(action === "plus"){
					var newValue =  getValue + 1;
					objInput.value = newValue;
				};
			};
		});
	};
}());