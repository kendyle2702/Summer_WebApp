<!doctype html>
<html lang="en">

<head>
	<%@include file="/components/head.jsp" %>
</head>

<body id="module-ttproductwishlist-mywishlist"
	class="lang-en country-us currency-usd layout-full-width page-mywishlist tax-display-disabled" itemscope
	itemtype="http://schema.org/WebPage">
	<%@include file="/components/header.jsp" %>
		<div class="ttloading-bg spinner"></div>

		<div class="newsletter-pop">

		</div>

		<main>
			<div id="page" class="">
				<nav data-depth="3" class="breadcrumb hidden-sm-down">
					<ol itemscope itemtype="http://schema.org/BreadcrumbList">


						<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
							<a itemprop="item" href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/"><span
									itemprop="name">Home</span></a>
							<meta itemprop="position" content="1">
						</li>


						<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
							<a itemprop="item"
								href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/my-account"><span
									itemprop="name">Your Account</span></a>
							<meta itemprop="position" content="2">
						</li>


						<li>
							<span>Your Wishlist</span>
						</li>


					</ol>
				</nav>


				<section id="wrapper">



					<aside id="notifications">
						<div class="container">



						</div>
					</aside>

					<div class="container">



						<div id="content-wrapper">


							<div id="mywishlist">
								<h1 class="h1 tt-innerpagetitle">My wishlists</h1>

								<form method="post" class="card card-block" id="form_wishlist">
									<fieldset>
										<h3 class="page-subheading">New wishlist</h3>
										<div class="form-group">
											<input type="hidden" name="token"
												value="0422a169af679d89870bb7a45edb7481" />
											<label class="align_right" for="name">
												Name
											</label>
											<input type="text" id="name" name="name" class="inputTxt form-control"
												value="" />
										</div>
										<p class="submit">
											<button id="submitWishlist" class="btn btn-primary" type="submit"
												name="submitWishlist">
												<span>Save</span>
											</button>
										</p>
									</fieldset>
								</form>
								<div id="block-history" class="table-responsive">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th class="first_item">Name</th>
												<th class="item mywishlist_first">Qty</th>
												<th class="item mywishlist_first">Viewed</th>
												<th class="item mywishlist_second">Created</th>
												<th class="item mywishlist_second">Direct Link</th>
												<th class="item mywishlist_second">Default</th>
												<th class="last_item mywishlist_first">Delete</th>
											</tr>
										</thead>
										<tbody>
											<tr id="wishlist_13">
												<td style="width:200px;">
													<a href="#"
														onclick="javascript:event.preventDefault();WishlistManage('block-order-detail', '13');">
														My wishlist
													</a>
												</td>
												<td class="bold align_center">
													3
												</td>
												<td>0</td>
												<td>2023-11-04</td>
												<td>
													<a href="#"
														onclick="javascript:event.preventDefault();WishlistManage('block-order-detail', '13');">
														View
													</a>
												</td>
												<td class="wishlist_default">
													<p class="is_wish_list_default">
														<i class="material-icons">&#xE86C;</i>
													</p>
												</td>
												<td class="wishlist_delete">
													<a class="icon" href="#"
														onclick="javascript:event.preventDefault();return (WishlistDelete('wishlist_13', '13', 'Do you really want to delete this wishlist ?'));">
														<i class="material-icons">&#xE872;</i>
													</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div id="block-order-detail" style="">
									<div class="wishlistLinkTop">
										<p class="wishlisturl form-group">
											<label>Permalink:</label>
											<input type="text" class="form-control"
												value="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/module/ttproductwishlist/view?token=1CDF48403DCC518C"
												readonly="readonly">
										</p>
										<div id="showSendWishlist">
											<a class="btn btn-primary send" href="#"
												onclick="$('#ttsendwishlist-modal').modal('show');"
												title="Send this wishlist">
												<span>Send this wishlist</span>
											</a>
										</div>
									</div>
									<div id="products" class="wlp_bought">
										<div class="products">
											<div class="row">
												<article id="wlp_13_0"
													class="product-miniature js-product-miniature col-xs-12 col-sm-6 col-md-4 col-xl-3"
													data-id-product="13" data-id-product-attribute="0" itemscope=""
													itemtype="http://schema.org/Product">
													<div class="product-container">
														<div class="thumbnail-container">
															<div class="thumbnail-inner">

																<a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/home/13-brown-bear-vector-graphics.html"
																	class="thumbnail product-thumbnail">
																	<img src="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/96-home_default/brown-bear-vector-graphics.jpg"
																		alt="Blended Smoothie cocktail">
																</a>

															</div>
															<a class="lnkdel" href="javascript:;"
																onclick="WishlistProductManage('wlp_bought', 'delete', '13', '13', '0', $('#quantity_13_0').val(), $('#priority_13_0').val());"
																title="Delete">
																<i class="fa fa-times-circle"></i>
															</a>
														</div>
														<div class="product-description">

															<h1 class="h3 product-title" itemprop="name">
																<a
																	href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/home/13-brown-bear-vector-graphics.html">
																	Blended Smoothie cocktail
																</a>
															</h1>



															<div class="product-price-and-shipping">
																<span itemprop="price" class="price">$9.00</span>

															</div>


															<p class="form-group">
																<label for="quantity_13_0">
																	Quantity
																</label>
																<input class="form-control" type="text"
																	id="quantity_13_0" value="1" size="3">
															</p>

															<p class="form-group">
																<label for="priority_13_0">
																	Priority:
																</label>
																<select id="priority_13_0" class="form-control grey">
																	<option value="0">
																		High
																	</option>
																	<option value="1" selected="selected">
																		Medium
																	</option>
																	<option value="2">
																		Low
																	</option>
																</select>
															</p>


															<div class="btn_action">
																<a class="btn btn-primary" href="javascript:;"
																	onclick="WishlistProductManage('wlp_bought_0', 'update', '13', '13', '0', $('#quantity_13_0').val(), $('#priority_13_0').val());"
																	title="Save">
																	<span>Save</span>
																</a>
															</div>
														</div>
													</div>
												</article>
												<article id="wlp_14_0"
													class="product-miniature js-product-miniature col-xs-12 col-sm-6 col-md-4 col-xl-3"
													data-id-product="14" data-id-product-attribute="0" itemscope=""
													itemtype="http://schema.org/Product">
													<div class="product-container">
														<div class="thumbnail-container">
															<div class="thumbnail-inner">

																<a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/treats/14-hummingbird-vector-graphics.html"
																	class="thumbnail product-thumbnail">
																	<img src="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/102-home_default/hummingbird-vector-graphics.jpg"
																		alt="Screwdriver Cocktail">
																</a>

															</div>
															<a class="lnkdel" href="javascript:;"
																onclick="WishlistProductManage('wlp_bought', 'delete', '13', '14', '0', $('#quantity_14_0').val(), $('#priority_14_0').val());"
																title="Delete">
																<i class="fa fa-times-circle"></i>
															</a>
														</div>
														<div class="product-description">

															<h1 class="h3 product-title" itemprop="name">
																<a
																	href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/treats/14-hummingbird-vector-graphics.html">
																	Screwdriver Cocktail
																</a>
															</h1>



															<div class="product-price-and-shipping">
																<span itemprop="price" class="price">$10.00</span>


																<span class="regular-price">$15.00</span>


															</div>


															<p class="form-group">
																<label for="quantity_14_0">
																	Quantity
																</label>
																<input class="form-control" type="text"
																	id="quantity_14_0" value="1" size="3">
															</p>

															<p class="form-group">
																<label for="priority_14_0">
																	Priority:
																</label>
																<select id="priority_14_0" class="form-control grey">
																	<option value="0">
																		High
																	</option>
																	<option value="1" selected="selected">
																		Medium
																	</option>
																	<option value="2">
																		Low
																	</option>
																</select>
															</p>


															<div class="btn_action">
																<a class="btn btn-primary" href="javascript:;"
																	onclick="WishlistProductManage('wlp_bought_0', 'update', '13', '14', '0', $('#quantity_14_0').val(), $('#priority_14_0').val());"
																	title="Save">
																	<span>Save</span>
																</a>
															</div>
														</div>
													</div>
												</article>
												<article id="wlp_18_36"
													class="product-miniature js-product-miniature col-xs-12 col-sm-6 col-md-4 col-xl-3"
													data-id-product="18" data-id-product-attribute="36" itemscope=""
													itemtype="http://schema.org/Product">
													<div class="product-container">
														<div class="thumbnail-container">
															<div class="thumbnail-inner">

																<a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/home/18-36-hummingbird-notebook.html#/22-paper_type-ruled"
																	class="thumbnail product-thumbnail">
																	<img src="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/126-home_default/hummingbird-notebook.jpg"
																		alt="Tequila and Grapefruit Juice">
																</a>

															</div>
															<a class="lnkdel" href="javascript:;"
																onclick="WishlistProductManage('wlp_bought', 'delete', '13', '18', '36', $('#quantity_18_36').val(), $('#priority_18_36').val());"
																title="Delete">
																<i class="fa fa-times-circle"></i>
															</a>
														</div>
														<div class="product-description">

															<h1 class="h3 product-title" itemprop="name">
																<a
																	href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/home/18-36-hummingbird-notebook.html#/22-paper_type-ruled">
																	Tequila and Grapefruit Juice
																</a>
															</h1>



															<div class="product-price-and-shipping">
																<span itemprop="price" class="price">$12.90</span>

															</div>


															<p class="form-group">
																<label for="quantity_18_36">
																	Quantity
																</label>
																<input class="form-control" type="text"
																	id="quantity_18_36" value="1" size="3">
															</p>

															<p class="form-group">
																<label for="priority_18_36">
																	Priority:
																</label>
																<select id="priority_18_36" class="form-control grey">
																	<option value="0">
																		High
																	</option>
																	<option value="1" selected="selected">
																		Medium
																	</option>
																	<option value="2">
																		Low
																	</option>
																</select>
															</p>


															<div class="btn_action">
																<a class="btn btn-primary" href="javascript:;"
																	onclick="WishlistProductManage('wlp_bought_36', 'update', '13', '18', '36', $('#quantity_18_36').val(), $('#priority_18_36').val());"
																	title="Save">
																	<span>Save</span>
																</a>
															</div>
														</div>
													</div>
												</article>
											</div>
										</div>
									</div>
									<div id="ttsendwishlist-modal" class="modal fade" tabindex="-1" role="dialog"
										aria-labelledby="myModalLabel" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">×</span>
													</button>
													<h2 class="modal-title">
														Send Wishlist
													</h2>
												</div>
												<div class="modal-body">
													<form method="post" class="wl_send box unvisible"
														onsubmit="return (false);">
														<fieldset>
															<div class="form-group row">
																<label for="email1"
																	class="col-md-3 form-control-label required">
																	Email1
																</label>
																<div class="col-md-9">
																	<input class="form-control" name="email1"
																		id="email1" type="email">
																</div>
															</div>
															<div class="form-group row">
																<label for="email2"
																	class="col-md-3 form-control-label required">
																	Email2
																</label>
																<div class="col-md-9">
																	<input class="form-control" name="email2"
																		id="email2" type="email">
																</div>
															</div>
															<div class="form-group row">
																<label for="email3"
																	class="col-md-3 form-control-label required">
																	Email3
																</label>
																<div class="col-md-9">
																	<input class="form-control" name="email3"
																		id="email3" type="email">
																</div>
															</div>
															<div class="form-group row">
																<label for="email4"
																	class="col-md-3 form-control-label required">
																	Email4
																</label>
																<div class="col-md-9">
																	<input class="form-control" name="email4"
																		id="email4" type="email">
																</div>
															</div>
															<div class="form-group row">
																<label for="email5"
																	class="col-md-3 form-control-label required">
																	Email5
																</label>
																<div class="col-md-9">
																	<input class="form-control" name="email5"
																		id="email5" type="email">
																</div>
															</div>
															<div class="form-group row">
																<label for="email6"
																	class="col-md-3 form-control-label required">
																	Email6
																</label>
																<div class="col-md-9">
																	<input class="form-control" name="email6"
																		id="email6" type="email">
																</div>
															</div>
															<div class="form-group row">
																<label for="email7"
																	class="col-md-3 form-control-label required">
																	Email7
																</label>
																<div class="col-md-9">
																	<input class="form-control" name="email7"
																		id="email7" type="email">
																</div>
															</div>
															<div class="form-group row">
																<label for="email8"
																	class="col-md-3 form-control-label required">
																	Email8
																</label>
																<div class="col-md-9">
																	<input class="form-control" name="email8"
																		id="email8" type="email">
																</div>
															</div>
															<div class="form-group row">
																<label for="email9"
																	class="col-md-3 form-control-label required">
																	Email9
																</label>
																<div class="col-md-9">
																	<input class="form-control" name="email9"
																		id="email9" type="email">
																</div>
															</div>
															<div class="form-group row">
																<label for="email10"
																	class="col-md-3 form-control-label required">
																	Email10
																</label>
																<div class="col-md-9">
																	<input class="form-control" name="email10"
																		id="email10" type="email">
																</div>
															</div>
														</fieldset>
													</form>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">Close</button>
													<button id="submitTtWishlist" class="btn btn-primary" type="submit"
														name="submitWishlist"
														onclick="WishlistSend('wl_send', '13', 'email');">
														<i class="fa fa-spinner fa-pulse"></i>
														<span>Send</span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="page-footer clearfix">

									<a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/my-account"
										class="account-link">
										<i class="material-icons">&#xE408;</i>
										<span>Back to your account</span>
									</a>
									<a href="https://prestashop1.templatetrip.com/PRS01/PRS001_summer/en/"
										class="account-link">
										<i class="material-icons">&#xE88A;</i>
										<span>Home</span>
									</a>

								</div>
							</div>


						</div>



					</div>

				</section>

				<%@include file="/components/footer.jsp" %>
			</div>
		</main>


		<script src="/js/bottom-8d0d2558.js"></script>

</body>

</html>