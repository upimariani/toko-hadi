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
		<button type="button" data-toggle="modal" data-target="#modal-default" class="btn btn-info mb-3">
			<i class="fas fa-plus"></i> Tambah Transaksi
		</button>
		<?php
		if ($this->session->userdata('success') != '') {
		?>
			<div class="alert alert-success alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<div class="alert-icon">
					<i class="zmdi zmdi-notifications-none"></i>
				</div>
				<div class="alert-message">
					<span><strong>Success!</strong> <?= $this->session->userdata('success') ?></span>
				</div>
			</div>
		<?php
		}
		?>
		<div class="modal fade" id="modal-default">
			<div class="modal-dialog">
				<form action="<?= base_url('Admin/cTransaksi/pesan_supplier') ?>" method="POST">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Pilih Supplier</h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="col-lg-12">
								<div class="form-group">
									<label for="exampleInputEmail1">Supplier</label>
									<select class="form-control" name="supplier" required>
										<option value="">---Pilih Supplier---</option>
										<?php
										foreach ($supplier as $key => $value) {
										?>
											<option value="<?= $value->id_supplier ?>"><?= $value->nama_supp ?></option>
										<?php
										}
										?>
									</select>
								</div>
							</div>
						</div>
						<div class="modal-footer justify-content-between">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Save changes</button>
						</div>
					</div>
				</form>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
		<div class="row">
			<div class="col-12 col-sm-12">
				<div class="card card-info card-tabs">
					<div class="card-header p-0 pt-1">
						<ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
							<?php
							$konfirmasi = $this->db->query("SELECT COUNT(id_pengajuan) as notif FROM `pengajuan` WHERE stat_pengajuan='1'")->row();
							$diproses = $this->db->query("SELECT COUNT(id_pengajuan) as notif FROM `pengajuan` WHERE stat_pengajuan='2'")->row();
							$dikirim = $this->db->query("SELECT COUNT(id_pengajuan) as notif FROM `pengajuan` WHERE stat_pengajuan='3'")->row();
							$belum_bayar = $this->db->query("SELECT COUNT(id_pengajuan) as notif FROM `pengajuan` WHERE stat_pengajuan='0'")->row();
							?>
							<li class="nav-item">
								<a class="nav-link" id="custom-tabs-one-abc-tab" data-toggle="pill" href="#custom-tabs-one-abc" role="tab" aria-controls="custom-tabs-one-abc" aria-selected="true">Belum Bayar <span class="badge bg-danger"><?= $belum_bayar->notif ?></span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="custom-tabs-one-profile-tab" data-toggle="pill" href="#custom-tabs-one-profile" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">Menunggu Konfirmasi <span class="badge bg-warning"><?= $konfirmasi->notif ?></span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="custom-tabs-one-messages-tab" data-toggle="pill" href="#custom-tabs-one-messages" role="tab" aria-controls="custom-tabs-one-messages" aria-selected="false">Pesanan Diproses <span class="badge bg-info"><?= $diproses->notif ?></span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="custom-tabs-one-settings-tab" data-toggle="pill" href="#custom-tabs-one-settings" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Pesanan Dikirim <span class="badge bg-success"><?= $dikirim->notif ?></span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="custom-tabs-one-selesai-tab" data-toggle="pill" href="#custom-tabs-one-selesai" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Pesanan Selesai</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="custom-tabs-one-tolak-tab" data-toggle="pill" href="#custom-tabs-one-tolak" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Pesanan Ditolak</a>
							</li>
						</ul>
					</div>
					<div class="card-body">
						<div class="tab-content" id="custom-tabs-one-tabContent">

							<div class="tab-pane fade show active" id="custom-tabs-one-abc" role="tabpanel" aria-labelledby="custom-tabs-one-abc-tab">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Informasi Transaksi Belum Bayar</h3>
									</div>
									<!-- /.card-header -->
									<div class="card-body">
										<table class="example1 table table-bordered table-striped">
											<thead>
												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
													<th class="text-center">Action</th>
												</tr>
											</thead>
											<tbody>
												<?php
												$no = 1;
												foreach ($transaksi as $key => $value) {
													if ($value->stat_pengajuan == '0') {

												?>
														<tr>
															<td><?= $no++ ?></td>
															<td><?= $value->nama_supp ?></td>
															<td><?= $value->tgl_pengajuan ?></td>
															<td>Rp. <?= number_format($value->total_pengajuan)  ?></td>

															<td><?php
																if ($value->stat_pengajuan == '0') {
																?>
																	<span class="badge badge-danger">Belum Bayar</span>
																<?php
																} else if ($value->stat_pengajuan == '1') {
																?>
																	<span class="badge badge-warning">Menunggu Konfirmasi</span>
																<?php
																} else if ($value->stat_pengajuan == '2') {
																?>
																	<span class="badge badge-info">Pesanan Diproses</span>
																<?php
																} else if ($value->stat_pengajuan == '3') {
																?>
																	<span class="badge badge-primary">Pesanan Dikirim</span>
																<?php
																} else if ($value->stat_pengajuan == '4') {
																?>
																	<span class="badge badge-success">Selesai</span>
																<?php
																} else {
																?>
																	<span class="badge badge-success">Menungu Konfirmasi Pemilik</span>
																<?php
																}
																?>
															</td>

															<td class="text-center"> <a href="<?= base_url('Admin/cTransaksi/detail_transaksi/' . $value->id_pengajuan) ?>" class="btn btn-warning">
																	<i class="fas fa-info"></i> Detail Transaksi
																</a> </td>
														</tr>
												<?php
													}
												}
												?>
											</tbody>
											<tfoot>

												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
													<th class="text-center">Action</th>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- /.card-body -->
								</div>
							</div>
							<div class="tab-pane fade" id="custom-tabs-one-profile" role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Informasi Transaksi Menunggu Konfirmasi</h3>
									</div>
									<!-- /.card-header -->
									<div class="card-body">
										<table class="example1 table table-bordered table-striped">
											<thead>
												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
													<th class="text-center">Action</th>
												</tr>
											</thead>
											<tbody>
												<?php
												$no = 1;
												foreach ($transaksi as $key => $value) {
													if ($value->stat_pengajuan == '1') {

												?>
														<tr>
															<td><?= $no++ ?></td>
															<td><?= $value->nama_supp ?></td>
															<td><?= $value->tgl_pengajuan ?></td>
															<td>Rp. <?= number_format($value->total_pengajuan)  ?></td>

															<td><?php
																if ($value->stat_pengajuan == '0') {
																?>
																	<span class="badge badge-danger">Belum Bayar</span>
																<?php
																} else if ($value->stat_pengajuan == '1') {
																?>
																	<span class="badge badge-warning">Menunggu Konfirmasi</span>
																<?php
																} else if ($value->stat_pengajuan == '2') {
																?>
																	<span class="badge badge-info">Pesanan Diproses</span>
																<?php
																} else if ($value->stat_pengajuan == '3') {
																?>
																	<span class="badge badge-primary">Pesanan Dikirim</span>
																<?php
																} else if ($value->stat_pengajuan == '4') {
																?>
																	<span class="badge badge-success">Selesai</span>
																<?php
																}
																?>
															</td>

															<td class="text-center"> <a href="<?= base_url('Admin/cTransaksi/detail_transaksi/' . $value->id_pengajuan) ?>" class="btn btn-warning">
																	<i class="fas fa-info"></i> Detail Transaksi
																</a> </td>
														</tr>
												<?php
													}
												}
												?>
											</tbody>
											<tfoot>

												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
													<th class="text-center">Action</th>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- /.card-body -->
								</div>
							</div>
							<div class="tab-pane fade" id="custom-tabs-one-messages" role="tabpanel" aria-labelledby="custom-tabs-one-messages-tab">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Informasi Transaksi Sedang Diproses</h3>
									</div>
									<!-- /.card-header -->
									<div class="card-body">
										<table class="example1 table table-bordered table-striped">
											<thead>
												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
													<th class="text-center">Action</th>
												</tr>
											</thead>
											<tbody>
												<?php
												$no = 1;
												foreach ($transaksi as $key => $value) {
													if ($value->stat_pengajuan == '2') {

												?>
														<tr>
															<td><?= $no++ ?></td>
															<td><?= $value->nama_supp ?></td>
															<td><?= $value->tgl_pengajuan ?></td>
															<td>Rp. <?= number_format($value->total_pengajuan)  ?></td>

															<td><?php
																if ($value->stat_pengajuan == '0') {
																?>
																	<span class="badge badge-danger">Belum Bayar</span>
																<?php
																} else if ($value->stat_pengajuan == '1') {
																?>
																	<span class="badge badge-warning">Menunggu Konfirmasi</span>
																<?php
																} else if ($value->stat_pengajuan == '2') {
																?>
																	<span class="badge badge-info">Pesanan Diproses</span>
																<?php
																} else if ($value->stat_pengajuan == '3') {
																?>
																	<span class="badge badge-primary">Pesanan Dikirim</span>
																<?php
																} else if ($value->stat_pengajuan == '4') {
																?>
																	<span class="badge badge-success">Selesai</span>
																<?php
																}
																?>
															</td>

															<td class="text-center"> <a href="<?= base_url('Admin/cTransaksi/detail_transaksi/' . $value->id_pengajuan) ?>" class="btn btn-warning">
																	<i class="fas fa-info"></i> Detail Transaksi
																</a> </td>
														</tr>
												<?php
													}
												}
												?>
											</tbody>
											<tfoot>

												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
													<th class="text-center">Action</th>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- /.card-body -->
								</div>
							</div>
							<div class="tab-pane fade" id="custom-tabs-one-settings" role="tabpanel" aria-labelledby="custom-tabs-one-settings-tab">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Informasi Transaksi Pesanan Dikirim</h3>
									</div>
									<!-- /.card-header -->
									<div class="card-body">
										<table class="example1 table table-bordered table-striped">
											<thead>
												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
													<th class="text-center">Action</th>
												</tr>
											</thead>
											<tbody>
												<?php
												$no = 1;
												foreach ($transaksi as $key => $value) {
													if ($value->stat_pengajuan == '3') {

												?>
														<tr>
															<td><?= $no++ ?></td>
															<td><?= $value->nama_supp ?></td>
															<td><?= $value->tgl_pengajuan ?></td>
															<td>Rp. <?= number_format($value->total_pengajuan)  ?></td>

															<td><?php
																if ($value->stat_pengajuan == '0') {
																?>
																	<span class="badge badge-danger">Belum Bayar</span>
																<?php
																} else if ($value->stat_pengajuan == '1') {
																?>
																	<span class="badge badge-warning">Menunggu Konfirmasi</span>
																<?php
																} else if ($value->stat_pengajuan == '2') {
																?>
																	<span class="badge badge-info">Pesanan Diproses</span>
																<?php
																} else if ($value->stat_pengajuan == '3') {
																?>
																	<span class="badge badge-primary">Pesanan Dikirim</span>
																<?php
																} else if ($value->stat_pengajuan == '4') {
																?>
																	<span class="badge badge-success">Selesai</span>
																<?php
																}
																?>
															</td>

															<td class="text-center"> <a href="<?= base_url('Admin/cTransaksi/detail_transaksi/' . $value->id_pengajuan) ?>" class="btn btn-warning">
																	<i class="fas fa-info"></i> Detail Transaksi
																</a> </td>
														</tr>
												<?php
													}
												}
												?>
											</tbody>
											<tfoot>

												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
													<th class="text-center">Action</th>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- /.card-body -->
								</div>
							</div>
							<div class="tab-pane fade" id="custom-tabs-one-selesai" role="tabpanel" aria-labelledby="custom-tabs-one-selesai-tab">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Informasi Transaksi Selesai</h3>
									</div>
									<!-- /.card-header -->
									<div class="card-body">
										<table class="example1 table table-bordered table-striped">
											<thead>
												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
													<th class="text-center">Action</th>
												</tr>
											</thead>
											<tbody>
												<?php
												$no = 1;
												foreach ($transaksi as $key => $value) {
													if ($value->stat_pengajuan == '4') {

												?>
														<tr>
															<td><?= $no++ ?></td>
															<td><?= $value->nama_supp ?></td>
															<td><?= $value->tgl_pengajuan ?></td>
															<td>Rp. <?= number_format($value->total_pengajuan)  ?></td>

															<td><?php
																if ($value->stat_pengajuan == '0') {
																?>
																	<span class="badge badge-danger">Belum Bayar</span>
																<?php
																} else if ($value->stat_pengajuan == '1') {
																?>
																	<span class="badge badge-warning">Menunggu Konfirmasi</span>
																<?php
																} else if ($value->stat_pengajuan == '2') {
																?>
																	<span class="badge badge-info">Pesanan Diproses</span>
																<?php
																} else if ($value->stat_pengajuan == '3') {
																?>
																	<span class="badge badge-primary">Pesanan Dikirim</span>
																<?php
																} else if ($value->stat_pengajuan == '4') {
																?>
																	<span class="badge badge-success">Selesai</span>
																<?php
																}
																?>
															</td>

															<td class="text-center"> <a href="<?= base_url('Admin/cTransaksi/detail_transaksi/' . $value->id_pengajuan) ?>" class="btn btn-warning">
																	<i class="fas fa-info"></i> Detail Transaksi
																</a> </td>
														</tr>
												<?php
													}
												}
												?>
											</tbody>
											<tfoot>

												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
													<th class="text-center">Action</th>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- /.card-body -->
								</div>
							</div>
							<div class="tab-pane fade" id="custom-tabs-one-tolak" role="tabpanel" aria-labelledby="custom-tabs-one-tolak-tab">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Informasi Transaksi Ditolak</h3>
									</div>
									<!-- /.card-header -->
									<div class="card-body">
										<table class="example1 table table-bordered table-striped">
											<thead>
												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
												</tr>
											</thead>
											<tbody>
												<?php
												$no = 1;
												foreach ($transaksi as $key => $value) {
													if ($value->stat_pengajuan == '9') {

												?>
														<tr>
															<td><?= $no++ ?></td>
															<td><?= $value->nama_supp ?></td>
															<td><?= $value->tgl_pengajuan ?></td>
															<td>Rp. <?= number_format($value->total_pengajuan)  ?></td>

															<td>
																<span class="badge badge-danger">Pesanan Ditolak Supplier</span>

															</td>
														</tr>
												<?php
													}
												}
												?>
											</tbody>
											<tfoot>

												<tr>
													<th>No</th>
													<th>Nama Supplier</th>
													<th>Tanggal Transaksi</th>
													<th>Total Bayar</th>
													<th>Status Pesanan</th>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- /.card-body -->
								</div>
							</div>
						</div>
					</div>
					<!-- /.card -->
				</div>
			</div>

			<!-- /.col -->
		</div>


	</div>
</div>
