% Note: This function requires the image acquisition toolbox
function capture_image(device_id, format)
    vid = videoinput('winvideo', device_id, format);
    img = getsnapshot(vid);
    figure;
    imshow(img);
    title('Captured Image');
end

