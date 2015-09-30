$(document).ready(function(){
	$("#Information").hide();
	var open = "closed";
    $("#service1div").click(function() {
    	//Case1: Div is open and belongs to service 1
		if($('#Information').is(":visible") && open == "s1"){
			$('#Information').slideToggle();
			$('#Information').css('background-color','#04463D');
			$(this).css('background-color','#04463D');
			open = "closed";
			return false;

		}
		
		//Case3: Div is closed
		if(open == "closed"){
		$('#Information').css('background-color','#152627');
		$('.services').find('.service').css('background-color', '#04463D');
		$('#Information').html("<p>We offer full casting services for your event. Streamed in full HD and complete with graphics for your event. With SmartcastGG streaming your event, you'll notice that your event will get all sorts of attention. </p>");
		$(this).css('background-color','#152627');
		$('#Information').slideToggle();
		open =  "s1";
		return false;
		}
		//Case2: Div is open and does not belong to service 1
		if(($('#Information').is(":visible")) && open != "s1"){
		$('#Information').css('background-color','#152627');
		$('.services').find('.service').css('background-color', '#04463D');
		$('#Information').html("<p>We offer full casting services for your event. Streamed in full HD and complete with graphics for your event. With SmartcastGG streaming your event, you'll notice that your event will get all sorts of attention. </p>");
		$(this).css('background-color','#152627');
		open =  "s1";
		return false;
		}
		 
				
	});
	$("#service2div").click(function() {
		//case 1
		if($('#Information').is(":visible") && open == "s2"){
			$('#Information').slideToggle();
			$('#Information').css('background-color','#04463D');
			$(this).css('background-color','#04463D');
			open ="closed";
			return false;
		}
		//Case 3
		if(open == "closed"){
		$('#Information').css('background-color','#152627');
		$('.services').find('.service').css('background-color', '#04463D');
		$('#Information').html("<p>Imagine having your Esports event having live commentary by people who know the game being played at your event. With SmartcastGG, you'll have access to a full team of people who not only know the game inside out, but also analyze plays that were made and are capable of exciting a crowd.</p>");
		$(this).css('background-color','#152627');
		$('#Information').slideToggle();
		open = "s2";
		return false;
		}
		//Case 2
		if(($('#Information').is(":visible")) && open != "s2"){
			$('#Information').css('background-color','#152627');
		$('.services').find('.service').css('background-color', '#04463D');
		$('#Information').html("<p>Imagine having your Esports event having live commentary by people who know the game being played at your event. With SmartcastGG, you'll have access to a full team of people who not only know the game inside out, but also analyze plays that were made and are capable of exciting a crowd.</p>");
		$(this).css('background-color','#152627');
		open ="s2";
		return false;		
		}

	});
	$("#service3div").click(function() {
		//case 1
		if($('#Information').is(":visible") && open == "s3"){
			$('#Information').slideToggle();
			open =  "closed";
			$('#Information').css('background-color','#04463D');
			$(this).css('background-color','#04463D');
			return false;
		}

		//case 3
		if(open == "closed"){
			$('#Information').css('background-color','#152627');
		$(this).parent().find('.service').css('background-color', '#04463D');
		$('#Information').html("<p>Have an idea for an Esports event but don't quite have the resources to properly host it? At SmartcastGG we count on a team of people that are not only good at talking about their areas of expertise but also have excellent public speaking skills. If you need a face for your event, we can provide it for you. </p>");
		$(this).css('background-color','#152627')
		$('#Information').slideToggle();
		open = "s3";
		return false;
		}

		//case 2
		if(($('#Information').is(":visible")) && open != "s3"){
			$('#Information').css('background-color','#152627');
		$(this).parent().find('.service').css('background-color', '#04463D');
		$('#Information').html("<p><p>Have an idea for an Esports event but don't quite have the resources to properly host it? At SmartcastGG we count on a team of people that are not only good at talking about their areas of expertise but also have excellent public speaking skills. If you need a face for your event, we can provide it for you.</p>");
		$(this).css('background-color','#152627')
		open = "s3";
		return false;		
		}
	

	});
});