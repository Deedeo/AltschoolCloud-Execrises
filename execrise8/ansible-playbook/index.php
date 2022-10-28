<html>
  <head>
    <title>ApachePHP</title>
  </head>
<style>
  body{
    background-color: #CCCCFF;
    font-family: Arial, Helvetica, sans-serif;
    line-height: 1.25em;
    height: 100%;
    }

  h1{
    font-size: 2em
    color: black;
    text-align: center;
    }
</style>


  <body>
    <h1>My FIRST APACHE WEB SERVER</h1>
    <h2>This page is created using ansible-playbook from a host/control machine</h2>
    <?php echo '<p>Welcome</p>'; ?>
    <?php
    echo 'The current time and date is:  ';
    echo PHP_EOL;
    date_default_timezone_set('Africa/Lagos');
    echo (date("F d, Y h:i:s A e,", time()));
    ?>

  </body>
</html>

