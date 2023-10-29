<div class="main-content">
	<div class="container-fluid">
		<div class="page-header">
			<div class="row align-items-end">
				<div class="col-lg-8">
					<div class="page-header-title">
						<i class="ik ik-user-plus bg-blue"></i>
						<div class="d-inline">
							<h5>Data Supplier</h5>
							<span>Data Supplier Barang</span>
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
							<li class="breadcrumb-item active" aria-current="page">Supplier</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
		<a href="<?= base_url('Admin/cSupplier/create') ?>" class="btn btn-success mb-3"><i class="ik ik-user-plus"></i>Tambah Data Supplier</a>
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
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<h3>Informasi Supplier</h3>

					</div>
					<div class="card-body">
						<table id="data_table" class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Nama Supplier</th>
									<th scope="col">Alamat</th>
									<th scope="col">No Telepon</th>
									<th scope="col">Username</th>
									<th scope="col">Password</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody>
								<?php
								$no = 1;
								foreach ($supplier as $key => $value) {
								?>
									<tr>
										<th scope="row"><?= $no++ ?></th>
										<td><?= $value->nama_supp ?></td>
										<td><?= $value->alamat_supp ?></td>
										<td><?= $value->no_hp ?></td>
										<td><?= $value->username ?></td>
										<td><?= $value->password ?></td>

										<td class="text-center">
											<div class="table-actions">
												<a href="<?= base_url('Admin/cSupplier/update/' . $value->id_supplier) ?>"><i class="ik ik-edit-2"></i></a>
												<a href="<?= base_url('Admin/cSupplier/delete/' . $value->id_supplier) ?>"><i class="ik ik-trash-2"></i></a>
											</div>
										</td>
									</tr>
								<?php
								}
								?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>


	</div>
</div>