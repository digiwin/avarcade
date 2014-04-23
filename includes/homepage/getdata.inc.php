<?php
if (!defined( 'AVARCADE_' )) {
	include '../../config.php';
	include '../core.php';
}
$cat_numb = mysql_result(mysql_query("SELECT COUNT(*) as Num FROM ava_games WHERE published=1"), 0); 

if(isset($_POST["lastid"]) && $_POST["lastid"] != "0")
{
    if ($cat_numb > 0)
    {
        $lastid = $_POST["lastid"];
        $sort = 'id DESC';
        $sql = mysql_query("SELECT * FROM ava_games WHERE id < $lastid AND published=1 ORDER BY $sort LIMIT 30");
        $row = mysql_fetch_array($sql);
        while ($row = mysql_fetch_array($sql))
        {
            $gameurl = GameUrl($row['id'], $row['seo_url'], $row['category_id']);
            $image_url = GameImageUrl($row['image'], $row['import'], $row['url']);
            //$size = getimagesize($image_url);
?>

<div class="post" id="<?php echo $row['id'];?>" style="margin-left: 0px;">
    <a href="<?php echo $gameurl; ?>">
        <img src="<?php echo $setting['site_url'] . $setting['template_url']; ?>/images/samples/dragon_age_legends_remix_01_1379835624_image_lx.png" width="133" height="148" alt="<?php echo $row['name']; ?>" style="display: inline;">
    </a>
    <span class="game-name">
        <a href="<?php echo $gameurl; ?>" title="<?php echo $row['name']; ?>">
            <?php echo $row['name']; ?> </a>
    </span>
    <?php
    if($row['featured'] == 1)
    {
    ?>
    <span class="feacover"></span>
    <?php } ?>
</div>
<?php
        }
    }
}


?>