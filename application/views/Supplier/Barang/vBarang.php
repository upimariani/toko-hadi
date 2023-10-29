<div class="main-content">
	<div class="container-fluid">
		<div class="page-header">
			<div class="row align-items-end">
				<div class="col-lg-8">
					<div class="page-header-title">
						<i class="ik ik-tag bg-blue"></i>
						<div class="d-inline">
							<h5>Data Barang</h5>
							<span>Barang Supplier</span>
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
		<a href="<?= base_url('Supplier/cBarang/create') ?>" class="btn btn-success mb-3"><i class="ik ik-tag"></i>Tambah Data Barang</a>
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
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<h3>Informasi Barang</h3>

					</div>
					<div class="card-body">
						<table id="data_table" class="table">
							<thead>
								<tr>
									<th class="d-none d-md-table-cell">Nama Barang</th>
									<th class="d-none d-md-table-cell">Keterangan</th>
									<th class="d-none d-md-table-cell">Deskripsi</th>
									<th class="d-none d-md-table-cell">Harga Barang</th>
									<th class="d-none d-md-table-cell">Stok</th>
									<th class="d-none d-md-table-cell"></th>

								</tr>
							</thead>
							<tbody>
								<?php foreach ($barang as $key => $value) { ?>
									<tr>
										<td class="d-none d-md-table-cell"><?= $value->nama_barang ?></td>
										<td class="d-none d-md-table-cell"><?= $value->keterangan ?></td>
										<td class="d-none d-md-table-cell"><?= $value->deskripsi ?></td>
										<td class="d-none d-md-table-cell">Rp. <?= number_format($value->harga)  ?></td>
										<td class="d-none d-md-table-cell"><?= $value->stok ?></td>
										<td class="text-center">
											<div class="table-actions">
												<a href="<?= base_url('Supplier/cBarang/update/' . $value->id_barang) ?>"><i class="ik ik-edit-2"></i></a>
												<a href="<?= base_url('Supplier/cBarang/delete/' . $value->id_barang) ?>"><i class="ik ik-trash-2"></i></a>
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