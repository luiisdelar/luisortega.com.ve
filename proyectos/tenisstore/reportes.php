<?php
require ("connection.php");

session_start();
$session = $_SESSION['rol'];

if($session == null || $session=='' || $session != 'admin'){
    header("location: usuarionoregistrado.php");
}

require("plantillas/cabecera.php");
require("plantillas/navbar-admin.php");

?>

<div class="container">
    <div class="row justify-content-center">
        <h2 class="text-center">Reportes</h2>
    </div>
    <form action="reportepdf.php" method="POST">
    <div class="table-responsive">
		<table class="table table-light table-striped table-bordered table-hover">
            <?php 
                $sql="select sum(monto)
                from facturas";
                $resultado=$base->prepare($sql);
                $resultado->execute();
                $registros=$resultado->fetch(PDO::FETCH_ASSOC);
            ?>
            <tr>
                <th>Total en ventas</th>
                <th><?php echo $registros["sum(monto)"]; ?> Bs</th>
                <input type="hidden" name="fila1b" value="<?php echo $registros['sum(monto)']; ?>">
            </tr>
            <tr>
                <th>Producto mas vendido</th>
                <?php 
                    $sql="select sum(d.cantidad), p.id
                    from detalle_factura d
                    join productos p
                    on d.id_producto=p.id
                    group by d.id_producto";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $aux=0;
                    $auxid=0;
                    while ($registros=$resultado->fetch(PDO::FETCH_ASSOC)) {
                        if ($registros['sum(d.cantidad)']>$aux) {
                            $aux=$registros['sum(d.cantidad)'];
                            $auxid=$registros['id'];
                        }
                    }
                    $sql="select *
                    from productos where id='$auxid'";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $registros=$resultado->fetch(PDO::FETCH_ASSOC);
                    
                ?>
                <th><?php echo $registros["nombre"]; ?></th>
                <th><?php echo $aux; ?> unidades</th>
                <input type="hidden" name="fila2b" value="<?php echo $registros["nombre"]; ?>">
                <input type="hidden" name="fila2c" value="<?php echo $aux; ?> unidades">
                
            </tr>
            <tr>
                <th>Factura con monto mas alto</th>
                <?php
                    $sql="select max(monto), id_users, id_cliente FROM facturas";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $registros=$resultado->fetch(PDO::FETCH_ASSOC);
                    $idu=$registros['id_users'];
                    $idc=$registros['id_cliente'];
                    $monto=$registros['max(monto)'];
                    $sql="select * FROM users where id='$idu'";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $registros=$resultado->fetch(PDO::FETCH_ASSOC);
                    
                ?>
                <th>Empleado: <?php echo $registros['fullname'] ?></th>
                <input type="hidden" name="fila3b" value="Empleado: <?php echo $registros['fullname'] ?>">
                <?php
                    $sql="select * FROM clientes where id='$idc'";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $registros=$resultado->fetch(PDO::FETCH_ASSOC);
                ?>
                <th>Cliente: <?php echo $registros['nombres'] ?></th>
                <th>Monto: <?php echo $monto; ?> Bs</th>
                <input type="hidden" name="fila3c" value="Cliente: <?php echo $registros['nombres'] ?>">
                <input type="hidden" name="fila3d" value="Monto: <?php echo $monto; ?> Bs">
            </tr>
            <tr>
                <th>Productos agotados</th>
                <?php
                    $sql="select count(*) FROM productos where cantidad=0";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $registros=$resultado->fetch(PDO::FETCH_ASSOC);
                ?>
                <th><?php echo $registros['count(*)'] ?></th>
                <input type="hidden" name="fila4b" value="<?php echo $registros['count(*)'] ?>">
            </tr>
            <tr>
                <th>Empleado con mas facturas</th>
                <?php
                    $sql="select count(f.id_users), f.id_users from facturas f join users u on f.id_users=u.id group by f.id_users";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $aux=0;
                    $auxid=0;
                    while ($registros=$resultado->fetch(PDO::FETCH_ASSOC)) {
                        if ($registros['count(f.id_users)']>$aux) {
                            $aux=$registros['count(f.id_users)'];
                            $auxid=$registros['id_users'];
                        }
                    }
                    $sql="select * FROM users where id='$auxid'";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $registros=$resultado->fetch(PDO::FETCH_ASSOC);
                ?>
                <th><?php echo $registros['fullname'] ?></th>
                <th><?php echo $aux ?> Facturas</th>
                <input type="hidden" name="fila5b" value="<?php echo $registros['fullname'] ?>">
                <input type="hidden" name="fila5c" value="<?php echo $aux ?>">
            </tr>
            <tr>
                <th>Empleados registrados</th>
                <?php
                    $sql="select count(*) from users where rol='Empleado'";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $registros=$resultado->fetch(PDO::FETCH_ASSOC);
                ?>
                <th><?php echo $registros['count(*)'] ?></th>
                <input type="hidden" name="fila6b" value="<?php echo $registros['count(*)'] ?>">
            </tr>
            <tr>
                <th>Clientes registrados</th>
                <?php
                    $sql="select count(*) from clientes";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $registros=$resultado->fetch(PDO::FETCH_ASSOC);
                ?>
                <th><?php echo $registros['count(*)'] ?></th>
                <input type="hidden" name="fila7b" value="<?php echo $registros['count(*)'] ?>">
            </tr>
        </table>
        
    </div>
    <div class="row justify-content-center">
            <div class="col-4 d-flex justify-content-center">
                <input type="button" onclick="location.href='admin.php';" value="Volver" class="btn btn-primary"/>
            </div>
            <div class="col-4 d-flex justify-content-center">
                <input type="submit" target="_blank" onclick="location.href='reportepdf.php';"  value="Generar PDF" class="btn btn-danger" />
            </div></form>
    </div>   
</div>

<?php 
    require("plantillas/footer.php");
?>