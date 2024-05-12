<!-- Contenido del módulo de clientes -->
<div>
    <h2>Listado del Stock</h2>

    <!-- Tabla de clientes -->
    <table class="table">
        <thead>
            <tr>
                
                <th>Nombre</th>
                <th>Cantidad</th>
                
            </tr>
        </thead>
        <tbody>
            <?php
        $scon = mysqli_connect('localhost:3308', 'root', 'perroo', 'tp2');

        if (!$scon) {
            die("Connection failed: " . mysqli_connect_error());
        }
  
        $sql = "SELECT nombre, cantidad FROM stock";
  
        $result = mysqli_query($scon, $sql);
  
       
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
              
                echo "<tr>";
                 
                  echo "<td>" . $row["nombre"] . "</td>";
                  echo "<td>" . $row["cantidad"] . "</td>";                  
                echo "</tr>";
           
            }
        } else {
            echo "<tr><td colspan='3'>No hay contactos disponibles.</td></tr>";
        }
  
        mysqli_close($scon);
        ?>
           
        </tbody>
    </table>

</div>
