<!-- Contenido del módulo de clientes -->
<div>
    <h2>Listado de Clientes</h2>

    <!-- Tabla de clientes -->
    <table class="table">
        <thead>
            <tr>
                
                <th>Nombre</th>
                <th>Contrasena</th>  
            </tr>
        </thead>
        
        <tbody>
            <?php
        $scon = mysqli_connect('localhost:3308', 'root', 'perroo', 'tp2');

        if (!$scon) {
            die("Connection failed: " . mysqli_connect_error());
        }
  
        $sql = "SELECT nombre_usuario,contrasena FROM usu";
  
        $result = mysqli_query($scon, $sql);
  
       
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
              
                echo "<tr>";
                  
                  echo "<td>" . $row["nombre_usuario"] . "</td>";
                  echo "<td>" . $row["contrasena"] . "</td>";
                 
                  
                echo "</tr>";
           
            }
        } else {
            echo "<tr><td colspan='3'>No hay contactos disponibles.</td></tr>";
        }
  
        mysqli_close($scon);
        ?>
           
        </tbody>
    </table>

    <!-- Botón para agregar nuevo cliente 
    <button class="">Agregar Cliente</button>-->
    <center><button onclick="window.location.href='formulario.html'">Registro de Nuevo Cliente</button>
    </center>
</div>
