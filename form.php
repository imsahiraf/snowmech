<?php include 'header.php'?>
<div class="tt-pagetitle">
	<div class="tt-pagetitle__box">
	<picture class="tt-pagetitle__img">
			<source srcset="images/pagetitle_bg01.webp" type="image/webp">
			<source srcset="images/pagetitle_bg01.jpg" type="image/jpg">
			<img src="images/pagetitle_bg01.jpg" alt="">
		</picture>
		<div class="container">
			<div class="tt-pagetitle__title">Contact Form</div>
			<ul class="tt-breadcrumbs">
				<li><a href="index.php">Home</a></li>
				<li>Contact Form</li>
			</ul>
		</div>
	</div>
</div>
<div id="tt-pageContent">
	<div class="section-inner bg-center-top lazyload" data-bg="images/section-map-contact.png">
		<div class="container container__tablet-fluid">
			<div class="row">
				<div class="col-md-5">
					<div class="blocktitle text-left">
						<div class="blocktitle__under">Contact</div>
						<div class="blocktitle__subtitle">Contact Form</div>
						<div class="blocktitle__title">Get in Touch</div>
					</div>
					<p class="tt-min-width-01">
						<strong class="tt-base-color">Our team proudly offers an on-time guarantee and a 100% customer satisfaction guarantee.</strong>
					</p>
					<p class="tt-min-width-01">
						Request a quote for any of our services, get to know how to manage your current bookings online, get information about our franchise opportunities, offer us a business partnership or give feedback.
					</p>
					<ul class="tt-list04 tt-list04__top">
						<li>
							<i class="icon-646094"></i>
							<strong>Service Requests:</strong>
							<a href="mailto:contact@snowmech.com">contact@snowmech.com</a>
						</li>
					</ul>
					<div class="tt-subtitle tt-subtitle__top">Follow us</div>
					<ul class="tt-icon-list">
						<li><a href="#"><i class="icon-733635"></i></a></li>
						<li><a href="#"><i class="icon-59439"></i></a></li>
						<li><a href="#"><i class="icon-2111532"></i></a></li>
						<li><a href="#"><i class="icon-733626"></i></a></li>
					</ul>
				</div>
				<div class="divider-noresponsive  tt-visible__mobile"></div>
				<div class="col-md-7">
					<div class="box-contact">
						<div class="tt-subtitle">Send Message</div>
						<form id="questionform" class="tt-form" data-src-handler="external/form/contact-form.php" data-form="validation" method="post" action="#">
							<div class="tt-form__group">
								<input type="text" name="name" data-validate-field="empty" class="tt-form__control" id="inputName" placeholder="Your name">
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="tt-form__group">
										<input type="text" name="email" data-validate-field="email" class="tt-form__control" id="inputEmail" placeholder="E-mail">
									</div>
								</div>
								<div class="col-md-6">
									<div class="tt-form__group">
										<input type="text" name="phonenumber" data-validate-field="number" class="tt-form__control" placeholder="Phone">
									</div>
								</div>
							</div>
							<div class="tt-form__group">
								<textarea name="message" data-validate-field="empty" rows="8" class="tt-form__control" placeholder="Message"></textarea>
							</div>
							<div class="tt-form__btn">
								<button type="submit" class="tt-btn02"><span>Send Message</span></button>
							</div>
							<div class="tt-modal-message">Form sent successfully</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>  
<?php include 'footer.php'?>