<?php 
include './handler/bootstrap.php';
$sql = $dbh; 
$array=array(); 
$rows=array(); 
$listnotif = $sql->listNotifUser($sql -> getActiveUser()[0]['username']);
foreach ($listnotif as $key) {
 $data['title'] = 'Shopping PokeZone notification';
 $data['msg'] = $key['notif_msg'];
 $data['icon'] = 'icon.png';
 $data['url'] = 'https://localhost/Progetto-Tecnologie-Web/Pokezon/shop.php';
 $rows[] = $data;
 // update notification database
 $nextime = date('Y-m-d H:i:s',strtotime(date('Y-m-d H:i:s'))+($key['notif_repeat']*60));
 $sql->updateNotif($key['id'],$nextime);
}
$array['notif'] = $rows;
$array['count'] = $listnotif[0]['notif_repeat'];
$array['result'] = $listnotif[0];
echo json_encode($array);
?>