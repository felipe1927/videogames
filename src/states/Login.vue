<template>
	<div id="state-login">
		
		<div class="content-login">
			<h3><span class="fa fa-user-circle-o"></span> Ingrese los datos para iniciar sesión</h3>
			<hr><br>
		
			<form autocomplete="off">
				<div class="form-group">
					<label><span class="fa fa-user-o"></span> Usuario</label>
					<input type="text" class="form-control">
				</div>
				<div class="form-group">
					<label><span class="fa fa-key"></span> contraseña</label>
					<input type="password" class="form-control">
				</div>
				
				<div class="form-group">
					<label>
						<input type="checkbox"> Mostrar contraseña <span class="fa fa-eye"></span>
					</label>
				</div>

				<div class="form-group">
					<a href="">Aún no tienes una cuenta ?</a>
				</div>

				<div class="form-group">
					<hr>
					<button class="btn btn-primary">Ingresar</button>
				</div>
			</form>
		</div>

	</div>
</template>

<script>
	export default{

	}
</script>

<style lang="scss" scoped>
	#state-login{
		.content-login{
			width: 500px;
			margin: 10px auto;
		}

		@media only screen and (max-width : 600px) {
			.content-login{
				width: 100%
			}
		}
	}
</style>