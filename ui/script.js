window.addEventListener('message', function(event) {
    switch(event.data.type){
        case 'updateHud':
            updateHud(event.data.data);
            break;
        case 'showHud':
            $('body').fadeIn();
            break;
        case 'hideHud':
            $('body').fadeOut();
            break;
    }
})

function updateHud(data) {
    $('.customWidth1').css('width', data.armor+'%');
    $('.customWidth2').css('width', data.health+'%');
}

// discord: denizaight - .gg/teamcloud
// discord: denizaight - .gg/teamcloud
// discord: denizaight - .gg/teamcloud
// discord: denizaight - .gg/teamcloud
// discord: denizaight - .gg/teamcloud