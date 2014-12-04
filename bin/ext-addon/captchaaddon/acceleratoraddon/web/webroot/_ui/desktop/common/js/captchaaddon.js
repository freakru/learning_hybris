ACC.captcha = {


	bindAll: function ()
	{
		this.renderWidget();
	},

	renderWidget: function ()
	{
		$.ajax({
			url: ACC.config.encodedContextPath + "/register/captcha/widget/recaptcha",
			type: 'GET',
			cache: false,
			success: function (html)
			{
				if ($(html) != [])
				{
					$(html).appendTo('.form_field-elements');
					if ($('#recaptchaChallangeAnswered').val() == 'false')
					{
						$('.control-group').addClass('error');
					}

					ACC.captcha.bindCaptcha();

				}
			}
		});
	},

	bindCaptcha: function ()
	{
		$.getScript('https://www.google.com/recaptcha/api/js/recaptcha_ajax.js', function ()
		{
			var publicKey = $('#recaptcha_widget').data('recaptchaPublicKey');
			if (!(typeof publicKey === 'undefined'))
			{
				Recaptcha.create(publicKey, "recaptcha_widget", {
					theme: "custom",
					lang: ACC.config.language
				});
			}
		});
	}
}

$(document).ready(function ()
{
	if ($('#registerForm').html() != null)
	{
		ACC.captcha.bindAll();
	}
});
