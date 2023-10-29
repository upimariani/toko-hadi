<div class="main-content">
	<div class="container-fluid">
		<div class="page-header">
			<div class="row align-items-end">
				<div class="col-lg-8">
					<div class="page-header-title">
						<i class="ik ik-user-plus bg-blue"></i>
						<div class="d-inline">
							<h5>Data Transaksi</h5>
							<span>Transaksi Bahan Baku Supplier</span>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<nav class="breadcrumb-container" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item">
								<a href="../index.html"><i class="ik ik-home"></i></a>
							</li>
							<li class="breadcrumb-item">
								<a href="#">Tables</a>
							</li>
							<li class="breadcrumb-item active" aria-current="page">Transaksi</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>


		<div class="row">
			<div class="card">
				<div class="card-header">
					<div class="callout callout-info">
						<h5><i class="fas fa-info"></i> Invoice</h5>

					</div>
				</div>
				<div class="card-body">
					<div class="invoice p-3 mb-3">
						<!-- title row -->
						<div class="row">
							<div class="col-12">
								<h4>
									<i class="fas fa-globe"></i> Invoice Pengajuan Bahan Baku
									<small class="float-right">Date: <?= date('Y-m-d') ?></small>
								</h4>
							</div>
							<!-- /.col -->
						</div>
						<!-- info row -->
						<div class="row invoice-info">
							<div class="col-sm-4 invoice-col">
								From
								<address>
									<strong>Admin, Inc.</strong><br>

								</address>
							</div>
							<!-- /.col -->

							<!-- /.col -->
						</div>
						<!-- /.row -->

						<!-- Table row -->
						<div class="row">
							<div class="col-12 table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>No.</th>
											<th>Qty</th>
											<th>Product</th>
											<th>Harga</th>
											<th>Subtotal</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no = 1;
										foreach ($transaksi['detail'] as $key => $value) {
										?>
											<tr>
												<td><?= $no++ ?></td>
												<td><?= $value->qty ?></td>
												<td><?= $value->nama_barang ?></td>
												<td>Rp. <?= number_format($value->harga)  ?></td>
												<td>Rp. <?= number_format($value->harga * $value->qty)  ?></td>
											</tr>
										<?php
										}
										?>


									</tbody>
								</table>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->

						<div class="row">
							<!-- accepted payments column -->
							<div class="col-6">
								<?php
								if ($transaksi['transaksi']->stat_pembayaran == '0') {
								?>

								<?php
								} else {
								?>
									<img class="mb-5" style="width: 150px;" src="<?= base_url('asset/pembayaran/' . $transaksi['transaksi']->bukti_payment)  ?>">
								<?php
								}
								?>

							</div>
							<!-- /.col -->
							<div class="col-6">

								<div class="table-responsive">
									<table class="table">
										<tr>
											<th>Total:</th>
											<td>Rp. <?= number_format($transaksi['transaksi']->total_pengajuan)  ?></td>
										</tr>
									</table>
								</div>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->

						<!-- this row will not appear when printing -->
						<div class="row no-print">
							<div class="col-12">

								<?php
								if ($transaksi['transaksi']->stat_pengajuan == '1') {
								?>
									<a href="<?= base_url('Supplier/cTransaksi/konfirmasi/' . $transaksi['transaksi']->id_pengajuan) ?>" class="btn btn-warning"><i class="fas fa-pen-alt"></i> Konfirmasi Pesanan</a>

								<?php
								} else if ($transaksi['transaksi']->stat_pengajuan == '2') {
								?>
									<a href="<?= base_url('Supplier/cTransaksi/kirim/' . $transaksi['transaksi']->id_pengajuan) ?>" class="btn btn-success"><i class="fas fa-bus-alt"></i> Kirim Pesanan</a>

								<?php
								}
								?>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Main content -->

			<!-- /.invoice -->
		</div><!-- /.col -->
	</div><!-- /.row -->
</div><!-- /.container-fluid -->