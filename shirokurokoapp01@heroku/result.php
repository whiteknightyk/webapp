<?php
/*author:しろくろこ*/

require_once('function.php');

//データベース接続
$dsn='';
$usr='';
$passwd='';
$db=new PDO($dsn,$usr,$passwd);


//ビジネスロジック
$yourname = $_POST['yourname'];
$birthday = $_POST['birthday'];
$result = 0;


$result += nametosum($yourname);
$result += datetosum($birthday);

$countsql = $db->prepare('SELECT COUNT(id) FROM language');
$countsql->execute();
$countrow= $countsql->fetch(PDO::FETCH_ASSOC);
$count=e($countrow['count']);

$id= ($result%$count)+1;


//データベース照会&取得

$record =$db->prepare('SELECT * FROM language WHERE id='.$id);
$record->execute();
$row = $record->fetch(PDO::FETCH_ASSOC);
$lang=e($row['language']);
$url=e($row['url'])

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>結果</title>
</head>
<body>
    <div class="container text-center">
        <?php if (empty($_POST['yourname'])||empty($_POST['birthday'])):?>
            <div class="row justify-content-center">
                <div class="col-12">
                    <p>ごめんなさい!名前と国名を両方入力してください!</p>
                </div><br>
                <div class="col-12">
                    <button class="btn btn-danger"><a href="index.html">戻る</a></button>
                </div><br>
            </div>
        <?php else:?>
            <div class="row justify-content-center">
                <div class="col-12">
                    <p>あなたに勧めたいのは <?php echo "<a href=".$url.">" ; ?> <?php echo $lang; ?> </a> です!</p><br>
                </div><br>
                <div class="col-12">
                    <a href="https://twitter.com/share?ref_src=twsrc%5Etfw" class="twitter-share-button" data-size="large" <?php echo "data-text=\"あなたはニューエクスプレス".$lang."です\"" ?> data-via="shirokuroko_EA" data-show-count="false">Tweet</a><script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script><br>
                </div><br>
                <div class="col-12">
                    <button class="btn btn-danger"><a href="index.html">戻る</a></button>
                </div><br>
            </div>
        <?php endif;?>
    </div>
</body>
</html>