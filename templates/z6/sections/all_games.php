<div class="post" id="<?php echo $game['id'];?>" style="margin-left: 0px;">
    <a href="<?php echo $game['url']; ?>">
        <img src="<?php echo $setting['site_url'] . $setting['template_url']; ?>/images/samples/dragon_age_legends_remix_01_1379835624_image_lx.png" width="133" height="148" alt="<?php echo $game['name']; ?>" style="display: inline;">
    </a>
    <span class="game-name">
        <a href="<?php echo $game['url']; ?>" title="<?php echo $game['name']; ?>">
            <?php echo $game['name']; ?> </a>
    </span>
    <?php
    if($game['featured'] == 1)
    {
    ?>
    <span class="feacover"></span>
    <?php } ?>
</div>