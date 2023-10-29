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

		<div class="row">
			<div class="col-md-7">
				<div class="card">
					<div class="card-header">
						<h3>Tambah Data Supplier</h3>

					</div>
					<div class="card-body">
						<form action="<?= base_url('Admin/cSupplier/update/' . $supplier->id_supplier) ?>" method="POST">
							<div class="form-group">
								<label for="input-1">Nama Supplier</label>
								<input type="text" value="<?= $supplier->nama_supp ?>" name="nama" class="form-control" id="input-1" placeholder="Masukkan Nama User">

								<?= form_error('nama', '<small class="text-danger">', '</small>') ?>
							</div>
							<div class="form-group">
								<label for="input-2">Alamat</label>
								<input type="text" value="<?= $supplier->alamat_supp ?>" name="alamat" class="form-control" id="input-2" placeholder="Masukkan Alamat">
								<?= form_error('alamat', '<small class="text-danger">', '</small>') ?>
							</div>
							<div class="form-group">
								<label for="input-3">No Telepon</label>
								<input type="text" name="no_hp" value="<?= $supplier->no_hp ?>" class="form-control" id="input-3" placeholder="Masukkan No Telepon">
								<?= form_error('no_hp', '<small class="text-danger">', '</small>') ?>
							</div>
							<div class="form-group">
								<label for="input-4">Username</label>
								<input type="text" name="username" value="<?= $supplier->username ?>" class="form-control" id="input-4" placeholder="Masukkan Username">
								<?= form_error('username', '<small class="text-danger">', '</small>') ?>
							</div>
							<div class="form-group">
								<label for="input-5">Password</label>
								<input type="text" name="password" value="<?= $supplier->password ?>" class="form-control" id="input-5" placeholder="Masukkan Password">
								<?= form_error('password', '<small class="text-danger">', '</small>') ?>
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-success px-5"><i class="ik ik-save"></i> Update</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


	</div>
</div>