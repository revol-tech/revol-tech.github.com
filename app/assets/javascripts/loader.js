$(document).ready(function(){
 /* the index of the current list element */
    var current = 1;

    /* function to iterate through all the list elements */
    var iterate = function(){
        var i = parseInt(current+1);
        var lis = $('#rotmenu').children('li').size();
        if(i>lis) i = 1;
        display($('#rotmenu li:nth-child('+i+')'));
    }

    /* Initially display the first one */
    display($('#rotmenu li:first'));

    /* In intervals of 3 seconds jump to the next element */
    var slidetime = setInterval(iterate,3000);

    /* if the User clicks on one list item, the auto slider stops */
    $('#rotmenu li').bind('click',function(e){
        clearTimeout(slidetime);
        display($(this));
        e.preventDefault();
    });

    /* displays each element associated to the "elem" list element */
    function display(elem){
        var $this   = elem;
        var repeat  = false;
        if(current == parseInt($this.index() + 1))
            repeat = true;

        /* slide in the current one */
        if(!repeat)
            $this.parent()
                 .find('li:nth-child('+current+') a')
                 .stop(true,true)
                 .animate({'marginRight':'-20px'},300,function(){
                $(this).animate({'opacity':'0.7'},700);
            });

        current = parseInt($this.index() + 1);

        var elem = $('a',$this);

        /* slide out the clicked or next one */
        elem.stop(true,true).animate({'marginRight':'0px','opacity':'1.0'},300);

        /* the heading and description will slide out, change the content and slide back in */
        var info_elem = elem.next();
        $('#rot1 .heading').animate({'left':'-420px'}, 500,'easeOutCirc',function(){
            $('h1',$(this)).html(info_elem.find('.info_heading').html());
            $(this).animate({'left':'0px'},400,'easeInOutQuad');
        });
        $('#rot1 .description').animate({'bottom':'-270px'},500,'easeOutCirc',function(){
            $('p',$(this)).html(info_elem.find('.info_description').html());
            $(this).animate({'bottom':'0px'},400,'easeInOutQuad');
        })

        /* the image will fade out and another will fade in */
        $('#rot1').prepend(
        $('<img alt="">',{
            style   :   'opacity:0',
            className : 'bg'
        }).load(
        function(){
            $(this).animate({'opacity':'1'},600);
            $('#rot1 img:first').next().animate({'opacity':'0'},700,function(){
                $(this).remove();
            });
        }
    ).attr('src','images/'+info_elem.find('.info_image').html())
     .attr('width','800')
     .attr('height','300')
    );
    }
});
