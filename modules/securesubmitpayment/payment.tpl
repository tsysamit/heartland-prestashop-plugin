<div class="securesubmitFormContainer">
	<h3><img alt="Secure Icon" class="secure-icon" src="{$module_dir}img/locked.png" style="background-size:20px 20px;"/>{l s='Pay by Credit Card' mod='securesubmitpayment'}</h3>
	<img alt="Accepted Cards" class="accepted-cards" src="{$module_dir}img/ss-shield@2x.png" />
	<div id="securesubmit-ajax-loader">
		<span>{l s='Your payment is being processed...' mod='securesubmitpayment'}</span>
		<img src="{$module_dir}img/ajax-loader.gif" alt="Loader Icon" />
	</div>
	<form action="{$module_dir}validation.php" method="POST" class="securesubmit-payment-form" id="securesubmit-payment-form"{if isset($securesubmit_credit_card)} style="display: none;"{/if}>
		{if isset($smarty.get.securesubmit_error)}<div class="securesubmit-payment-errors">{$smarty.get.securesubmit_error|base64_decode|escape:html:'UTF-8'}</div>{/if}<a name="securesubmit_error" style="display:none"></a>
		<div class="form-group required col-md-12">
			<label>{l s='Card Number*' mod='securesubmitpayment'}</label>
			<div id="securesubmitIframeCardNumber" class="ss-frame-container"></div>
		</div>
		<div class="form-group required col-md-6">
			<label>{l s='Expiration (MM/YYYY*)' mod='securesubmitpayment'}</label><br />
			<div id="securesubmitIframeCardExpiration" class="ss-frame-container"></div>
		</div>
		<div class="form-group required col-md-6 ">
			<label>{l s='CVC*' mod='securesubmitpayment'}</label><br />
			<div id="securesubmitIframeCardCvv" class="ss-frame-container"></div>
			<p class="error-message" id="gps-cvv-error"></p>
		</div>
		<br />
		<div class="form-group required ">
			<div id="submit_button" class="ss-frame-container"></div>
		</div>
		<br/>
	</form>
</div>
