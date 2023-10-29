<div class="main-content">
	<div class="container-fluid">
		<div class="page-header">
			<div class="row align-items-end">
				<div class="col-lg-8">
					<div class="page-header-title">
						<i class="ik ik-tag bg-blue"></i>
						<div class="d-inline">
							<h5>Analisis Data Barang</h5>
							<span>Forecasting Barang</span>
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
							<li class="breadcrumb-item active" aria-current="page">Barang</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
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
		<button type="button" data-toggle="modal" data-target="#modal-default" class="btn btn-success mb-3">
			<i class="fas fa-plus"></i> Tambah Analisis
		</button>
		<div class="modal fade" id="modal-default">
			<div class="modal-dialog">
				<form action="<?= base_url('Admin/cTransaksi/pesan_supplier') ?>" method="POST">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Analisis Peramalan Barang</h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="col-lg-12">
								<div class="form-group">
									<label for="exampleInputEmail1">Pilih Periode</label>
									<select class="form-control" name="supplier" required>
										<option value="">---Pilih Periode Analisis---</option>

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
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<h3>Informasi Analisis Peramalan Barang</h3>

					</div>
					<div class="card-body">
						<table id="data_table" class="table">
							<thead>
								<tr>
									<th class="d-none d-md-table-cell">Nama Barang</th>
									<th class="d-none d-md-table-cell">Tanggal Peramalan</th>
									<th class="d-none d-md-table-cell">Periode</th>
									<th class="d-none d-md-table-cell">Data Aktual</th>
									<th class="d-none d-md-table-cell">Data Peramalan</th>
									<th class="d-none d-md-table-cell"></th>

								</tr>
							</thead>
							<tbody>
								<?php foreach ($view_analisis as $key => $value) { ?>
									<tr>
										<td class="d-none d-md-table-cell"><?= $value->nama_barang ?></td>
										<td class="d-none d-md-table-cell"><?= $value->tgl_peramalan ?></td>
										<td class="d-none d-md-table-cell"><?= $value->bulan_periode ?></td>
										<td class="d-none d-md-table-cell"><?= $value->dt_aktual ?></td>
										<td class="d-none d-md-table-cell"><?= $value->dt_peramalan ?></td>
										<td class="text-center">
											<div class="table-actions">
												<a href="<?= base_url('Owner/cPeramalan/view_analisis/' . $value->id_barang) ?>"><i class="ik ik-eye"></i></a>
											</div>
										</td>
									</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>


	</div>
</div>