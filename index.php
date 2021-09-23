<?php 




?>



<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Yasemin Tümkaya</title>
</head>
<body>

    <header>
        <img src="logo.png">

        <ul>
            <a href="#"><li>Anasayfa</li></a>
            <a href="#"><li>Öğrenci İşleri</li></a>
            <a href="#"><li>İdari Personel</li></a>
        </ul>
    </header>

 <?php

include 'baglan.php';



?>



<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Antakya Meslek Yüksekokulu</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

  <div class="menu">

  </div>

    <div class="container">
        <div class="tablo1">
<table id="tablo1" class="table">
  <tr>
    <th>OgrNo</th> 
    <th>Ad</th>
    <th>Soyad</th>
    <th>Bölüm</th>
  </tr>

  <?php 
$veri_sor = $db->prepare("SELECT * FROM ögrenci
INNER JOIN bolum ON ögrenci.ogr_bolum = bolum.bolum_id ");
$veri_sor->execute();
while ($veri_cek = $veri_sor->fetch(pdo::FETCH_ASSOC)) { ?>
  <tr>
    <td><?php echo $veri_cek['ogr_id']; ?></td>
    <td><?php echo $veri_cek['ogr_ad']; ?></td>
    <td><?php echo $veri_cek['ogr_soyad']; ?></td>
    <td><?php echo $veri_cek['bolum_ad']; ?></td>
  </tr>
  <?php } ?>
</table>
    </div>
        <div class="tablo2">
    <table id="tablo2" class="table">
  <tr>
    <th>OgrNo</th>
    <th>Ad</th>
    <th>Soyad</th>
    <th>Bölüm</th>
  </tr>

  

<?php
  $veri_cek = $db->query("SELECT * FROM ögrenci INNER JOIN bolum ON ögrenci.ogr_bolum = bolum.bolum_id WHERE ogr_bolum!=''")->fetchAll(PDO::FETCH_ASSOC);
 foreach( $veri_cek as $veri): 
 ?>
  <tr>
    <td><?php echo $veri['ogr_id']; ?></td>
    <td><?php echo $veri['ogr_ad']; ?></td>
    <td><?php echo $veri['ogr_soyad']; ?></td>
    <td><?php echo $veri['bolum_ad']; ?></td>
  </tr>

<?php endforeach; ?>


</table>
    </div>

        <div class="tablo3">
            <table class="table">
            <tr>
                <th>Bölüm Adı</th>
                <th>Öğrenci Sayısı</th>
            </tr>
            <?php
    $veri_cek = $db->query("SELECT bolum.*, COUNT(ögrenci.ogr_bolum) as toplamOgrenci FROM ögrenci 
    INNER JOIN bolum ON ögrenci.ogr_bolum = bolum.bolum_id WHERE ogr_bolum!='' 
    GROUP BY ogr_bolum")->fetchAll(PDO::FETCH_ASSOC);
  foreach( $veri_cek as $veri): 
 ?>
  <tr>
    <td><?php echo $veri['bolum_ad']; ?></td>
    <td><?php echo $veri['toplamOgrenci']; ?></td>
  </tr>

<?php endforeach; ?>
            </table>
        </div>
    </div>


    <footer>
        <img src="logo.png">
    </footer>
    
</body>
</html>


    
<footer>
    <img src="logo.png">
</footer>

</body>
</html>