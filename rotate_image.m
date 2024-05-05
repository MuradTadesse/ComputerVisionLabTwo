function rotated_img = rotate_image(img, angle)
    rotated_img = imrotate(img, angle, 'bilinear', 'crop');
    figure;
    subplot(1, 2, 1);
    imshow(img);
    title('Original Image');
    subplot(1, 2, 2);
    imshow(rotated_img);
    title('Rotated Image');
end

