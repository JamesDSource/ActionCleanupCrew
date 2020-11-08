event_inherited();
image_speed = 0;

opened = false;

function open() {
    if(!opened) {
        mask_index = sEmpty;
        image_speed = 1;
        opened = true;
    }
}