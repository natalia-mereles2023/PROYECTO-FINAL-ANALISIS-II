<?php

$clientes = array(
    array("id" => 1, "nombre" => "Cliente 1"),
    array("id" => 2, "nombre" => "Cliente 2"),
    array("id" => 3, "nombre" => "Cliente 3")
);
?>

<div>
    <h2>Listado de Clientes</h2>    
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>                
                <th>Contrasena</th>                
            </tr>
        </thead>
        <tbody>
            <?php foreach ($clientes as $cliente) : ?>
                <tr>
                    <td><?php echo $cliente['id']; ?></td>
                    <td><?php echo $cliente['nombre_usuario']; ?></td>
                    <td><?php echo $cliente['contrasena']; ?></td>
                    
                    <td>                       
                        <button class="btn btn-primary btn-sm">Editar</button>
                        <button class="btn btn-danger btn-sm">Eliminar</button>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <button class="btn btn-success">Agregar Cliente</button>
</div>
