/*global define:true */
define(["jquery"],function($) {
    "use strict";
    var queue_timer = null;

    function queue(){
        $.get("/spotify/queue").success(function(data){
            $("#queue ol").html($(data).map(function(){
                return "<li><span>" + this + "</span></li>";
            }).get());
        });
        queue_timer = setTimeout(function(){
            queue();}, 5000);
    }

    function search(trackName){
        var trackName = encodeURIComponent(trackName);
        $.get("http://ws.spotify.com/search/1/track.json?q="+trackName,function(data){
            var html = "";
            var tracks = data.tracks;
            $(tracks).each(function(i,elm){
                var track = $(elm)[0];
                var artists = "";
                $(track.artists).each(function(i,item){
                    artists += item.name + " ";
                });
                html += "<li><span class=\"pop\"><i class=\"fa fa-music\"></i> "+ parseInt(track.popularity * 100,10) +"</span><div class=\"track-info\"><span>"+ track.name + "</span> - <span>"+ artists +"</span> ("+ track.album.released +")<br><small>Length: "+ track.length +"</small> <a href=# data-track="+ track.href +"><br><i class=\"fa fa-plus\"></i>Queue</a></div></li>";
            });
            $("ul#result").html(html);
            $("ul#result a").on("click",function(evt){
                evt.preventDefault();
                $.post("/spotify/queue",{
                    uri: $(this).data("track")
                })
                .done(function(){
                    queue();
                });
            });

        });
    }
    function setFilter(filter){
        var filterSearch = filter + $("#track").val();
        $("#track").val(filterSearch);
        search(filterSearch);
    }
    $(function(){
        $("input[type=text]").on("keyup",function(){
            search($("#track").val());
        });
        $("a[data-filter]").on("click",function(){
            event.preventDefault();
            setFilter($(this).data("filter"));
        });
        search($("#track").val());
        queue();
    });
});
