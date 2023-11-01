<?php
include 'init.php';
if ($users->isLoggedIn()) {
	header('Location: ticket.php');
}
$errorMessage = $users->login();
include('inc/header.php');
?>
<title>Simple Ticket</title>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/general.js"></script>
<script src="js/user.js"></script>
<link rel="stylesheet" href="css/style.css" />
<?php include('inc/container.php'); ?>
<div class="container contact">
	<h2>Simple Ticket</h2>
	<div class="col-md-6">
		<div class="panel panel-info">
			<div class="panel-heading" style="background:#00796B;color:white;">
				<div class="panel-title">Tela de Login</div>
			</div>
			<div style="padding-top:30px" class="panel-body">
				<?php if ($errorMessage != '') { ?>
					<div id="login-alert" class="alert alert-danger col-sm-12">
						<?php echo $errorMessage; ?>
					</div>
				<?php } ?>
				<form id="loginform" class="form-horizontal" role="form" method="POST" action="">
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input type="text" class="form-control" id="email" name="email" placeholder="email"
							style="background:white;" required>
					</div>
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<input type="password" class="form-control" id="password" name="password" placeholder="senha"
							required>
					</div>
					<div style="margin-top:10px" class="form-group">
						<div class="col-sm-12 controls">
							<input type="submit" name="login" value="Entrar" class="btn btn-success">
						</div>
					</div>
					<div style="margin-top:10px" class="form-group">
						<div class="col-sm-12 controls">
							<button type="button" name="register" id="registerUser" class="btn btn-success">Criar
								Conta</button>
						</div>
					</div>
			</div>
			</form>
		</div>
	</div>
</div>
</div>

<div id="userModal" class="modal fade">
	<div class="modal-dialog">
		<form method="post" id="userForm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title"><i class="fa fa-plus"></i>Criar Conta</h4>
				</div>
				<div class="modal-body">
					<div class="form-group" <label for="username" class="control-label">Nome*</label>
						<input type="text" class="form-control" id="userName" name="userName" placeholder="User name"
							required>
					</div>

					<div class="form-group" <label for="username" class="control-label">Email*</label>
						<input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
					</div>

					<div class="form-group" <label for="username" class="control-label">Senha*</label>
						<input type="password" class="form-control" id="newPassword" name="newPassword"
							placeholder="Novo Senha">
					</div>
					<div class="form-group">
						<label for="status" class="control-label">Cargo</label>
						<select id="role" name="role" class="form-control">
							<option value="admin">Administrador</option>
							<option value="user">Cliente</option>
						</select>
					</div>

					<div class="form-group">
						<label for="status" class="control-label">Status</label>
						<select id="status" name="status" class="form-control">
							<option value="1">Ativo</option>
							<option value="0">Inativo</option>
						</select>
					</div>

				</div>
				<div class="modal-footer">
					<input type="hidden" name="userId" id="userId" />
					<input type="hidden" name="action" id="action" value="" />
					<input type="submit" name="save" id="save" class="btn btn-info" value="Salvar" />
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
				</div>
			</div>
		</form>
	</div>
</div>
<?php include('inc/footer.php'); ?>