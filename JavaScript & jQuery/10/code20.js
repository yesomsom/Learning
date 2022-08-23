$.fn.imageSlider = function (object) {
    const width = object.width || 460;
    const height = object.width || 300;
    let current = 0;

    const moveTo = function() {
        $(this).find('.images').animate({
            left: -current * width
        }, 1000);
    };
    const imageLength = $(this).find('.image').length;

    for (let i = 0; i < imageLength; i++) {
        $('<button></button>')
        .attr('data-position', i)
        .text(i)
        .click(function () {
            current = $(this).attr('data-position');
            moveTo();
        })
        .insertBefore(this);
    }
    $(this).css({
        position: 'relative',
        width: width,
        height: height,
        overflow: 'hidden'
    });
    $(this).find('images').css({
        position: 'absolute',
        width: width * imageLength,
    });
    $(this).find('.image').css({
        margin: 0,
        padding: 0,
        width: width,
        height: height,
        display: 'block',
        float: 'left'
    });
    setInterval(function () {
        current = current +1;
        current = current % imageLength;
        moveTo();
    }, 3000);
};