<?php
defined( 'AVARCADE_' ) or die( '' );
$cat_numb = mysql_result(mysql_query("SELECT COUNT(*) as Num FROM ava_games WHERE published=1"), 0);
if ($cat_numb > 0)
{
    //$from = (($page * $template['games_per_page']) - $template['games_per_page']);
    $sort = 'id DESC';
    $sql = mysql_query("SELECT * FROM ava_games WHERE published=1 ORDER BY $sort LIMIT 0, $template[games_per_page]");
    //$row = mysql_fetch_array($sql);
    while ($row = mysql_fetch_array($sql))
    {
        //echo $row['id'] . '<br/>';
        $game = GameData($row, 'homepage');
        include('.'.$setting['template_url'].'/'.$template['all_game']);
    }
    
} else {
    echo '<div id="no_games">'.CATEGORY_NO_GAMES.'</div>';
}

?>