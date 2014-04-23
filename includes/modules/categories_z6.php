<?php
$sql = mysql_query("SELECT * FROM ava_cats WHERE parent_id = 0 ORDER BY cat_order");
?>

<ul>
    <li class="current"><a href="<?php echo $setting['site_url']; ?>">All</a></li>
    <?php
    while($row = mysql_fetch_array($sql))
    {
        $seo_name = seoname($row['name']);
        $url = CategoryUrl($row['id'], $row['seo_url'], 1, 'newest');
    ?>
    <li>
        <a href="<?php echo $url; ?>"><?php echo $row['name']; ?></a>
    </li>
    <?php
    }
    ?>
</ul>