<?php include 'header.php'; ?>
<script type="text/javascript">
$(document).ready(function(){   
    console.log($(document).height() +'|'+ $(window).height());
	$(window).scroll(function(){ /* window on scroll run the function using jquery and ajax */
		var WindowHeight = $(window).height(); /* get the window height */
        console.log($(document).height() +'|'+ WindowHeight);
        //alert($(window).scrollTop());
		if($(window).scrollTop() == $(document).height() - WindowHeight){ /* check is that user scrolls down to the bottom of the page */
            //alert($(window).scrollTop() + '|' + $(document).height() +'|'+ WindowHeight);
            //$("#loader").html("<img src='loading_icon.gif' alt='loading'/>"); /* displa the loading content */
            
			var LastDiv = $(".post:last"); /* get the last div of the dynamic content using ":last" */
			var LastId  = $(".post:last").attr("id"); /* get the id of the last div */
			var ValueToPass = "lastid="+LastId; /* create a variable that containing the url parameters which want to post to getdata.php file */
			$.ajax({ /* post the values using AJAX */
			type: "POST",
			url: "./includes/homepage/getdata.inc.php",
			data: ValueToPass,
			cache: false,
				success: function(html){
					//$("#loader").html("");
					if(html){
					   var $boxes = $(html);
					   LastDiv.after(html); /* get the out put of the getdata.php file and append it after the last div using after(), for each scroll this function will execute and display the results */
                        /*
                        var container = document.querySelector('#container');
                        var msnry = new Masonry(container, {
                            // options
                            columnWidth: 120, itemSelector: '.box'
                        });
                        */
					}
				}
			});

            
			return false;
		}
		return false;
	});
});
</script>
<div class="headbg">
    <div id="site-head">
        <div class="logo left">
            <a href="images/Z6 - Free Online Games, Play Flash Games Online.htm">Z6</a>
        </div>
        <div class="FBlike">
            facebook like
        </div>
        <div class="search right">
            <form onsubmit="javascript:do_search();
                            return false;" autocomplete="off">
                <input type="text" placeholder="Search..." class="s-text left" id="key" />
                <input type="submit" class="s-btn right" value="Go" id="do" />
            </form>
        </div>
        <div class="google-translate">
            google translate
        </div>

        <div class="tab">
            <ul class="tablist">
                <li class="new"><a href="images/Z6 - Free Online Games, Play Flash Games Online.htm" class="active">New Games</a></li>
                <li class="top"><a href="http://z6.com/top">Top Games</a></li>
            </ul>
        </div>
        <div class="cate">
            <?php include('./includes/modules/categories_z6.php');?>
        </div>
        <ul class="hottags">
            <li>
                <a href="http://z6.com/tags/3d_action">
                    3D Action</a>
            </li>
            <li>
                <a href="http://z6.com/tags/3d_racing">
                    3D Racing</a>
            </li>
            <li>
                <a href="http://z6.com/tags/3d_shooting">
                    3D Shooting</a>
            </li>
            <li>
                <a href="http://z6.com/tags/adventure">
                    Adventure</a>
            </li>
            <li>
                <a href="http://z6.com/tags/baby">
                    Baby</a>
            </li>
            <li>
                <a href="http://z6.com/tags/barbie">
                    Barbie</a>
            </li>
            <li>
                <a href="http://z6.com/tags/cooking">
                    Cooking</a>
            </li>
            <li>
                <a href="http://z6.com/tags/fighting">
                    Fighting</a>
            </li>
            <li>
                <a href="http://z6.com/tags/holiday">
                    Holiday</a>
            </li>
            <li>
                <a href="http://z6.com/tags/make_up">
                    Make Up</a>
            </li>
            <li>
                <a href="http://z6.com/tags/sports">
                    Sports</a>
            </li>
            <li>
                <a href="http://z6.com/tags/tower_defense">
                    Tower Defense</a>
            </li>
            <li>
                <a href="http://z6.com/tags/zombie">
                    Zombie</a>
            </li>
        </ul>
        <div class="fbshare">
            <a href="https://www.facebook.com/z6game" target="_blank">
                <img src="<?php echo $setting['site_url'] . $setting['template_url']; ?>/images/Fbook.png" width="38" height="38">
            </a>
        </div>

        <script type="text/javascript">
            $("#key").focus(function() {
                $(this).val("");
            }).focusout(function() {
                if ($(this).val() == "") {
                    $(this).val("Search...");
                }
            });
            var searchTmp = "/_tempString_games";
            function do_search() {
                var kw = $.trim($('#key').val());
                var reg = /(\W+)/g;
                var kw = kw.replace(reg, '_');
                var kw = kw.replace(/^_+|_+$/, '');
                var kw = kw.toLowerCase();
                if (!kw || kw == "Search...") {
                    alert('Please input a keyword');
                    return false;
                }
                u = searchTmp.replace('_tempString', encodeURIComponent(kw));
                location.href = u;
                return true;
            }
        </script> </div>
</div>
<div id="site-content">
    <div class="post" style="margin-left: 0px;">
        <a href="http://go.game321.com/z6_6_loa.htm?z6_6_loa={z6_6_loa}&ZONEID={ZONEID}&param2={param2}" target="_blank">
            <img src="<?php echo $setting['site_url'] . $setting['template_url']; ?>/images/samples/z6.png" width="133" height="148" alt="League of Angels" style="display: inline;">
        </a>
        <span class="game-name">
            <a href="http://go.game321.com/z6_6_loa.htm?z6_6_loa={z6_6_loa}&ZONEID={ZONEID}&param2={param2}" title="League of Angels" target="_blank">
                League of Angels </a>
        </span>
        <span class="feacover"></span>
    </div>
    <?php include 'includes/homepage/all_games.inc.php';?>
</div>
<!--
<div id="Pagenav" style="display:none;">
    <a class="next" id="pageNext" href="http://z6.com/?page=2">Next</a>
</div>
-->
<?php include 'footer.php'; ?>