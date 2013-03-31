var CafePendiente = CafePendiente || {};

$(document).ready(function () {
	CafePendiente.Index = new (function() {

		var variable1 = '';

		/////////////////
		// CONSTRUCTOR //
		/////////////////

		(function() {

			alert('Test');

		})();

		////////////////////
		// PUBLIC METHODS //
		////////////////////

		this.publicMethod = function () {

		}

		/////////////////////
		// PRIVATE METHODS //
		/////////////////////

		function privateMethod() {
			return false;
		}	
		
	});
});