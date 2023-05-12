<?php 
include("conexao.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>Blog</title>
</head>
<body>
    <div class="container mt-5">
    <table class="table table-hover" width="800">
        <?php 
        $query= mysqli_query($conexao, "SELECT * from blog INNER JOIN bloginfo ON blog_bloginfo_codigo = bloginfo_codigo INNER JOIN blogimgs on blog_blogimgs_codigo = blogimgs_codigo INNER JOIN usuario ON blog_usuario_codigo = usuario_codigo");
        while($exibe = mysqli_fetch_array($query)){
        ?>
        <tr>
            <td><img class="rounded mx-auto d-block " src="imgs/<?php echo $exibe[9] ?>" width="200px" alt=""></td>
            <td>
                <a class="link-underline-opacity-0" href="page.php?blog_codigo=<?php echo $exibe[0] ?>">
                <h3 class="title" ><?php echo $exibe[7] ?></h3>
                Criada por <b><?php echo $exibe[11] ?></b> em <?php echo $exibe[6] ?>
                <hr>
                <?php  echo substr($exibe[5],0,250)."..."  ?> 
            </a>
        
            </td>
        </tr>
        <?php } ?>
    </table>
    </div>
</body>
</html>