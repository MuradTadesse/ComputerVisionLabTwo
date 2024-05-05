function converted_img = convert_color_space(img, color_space)
    if strcmp(color_space, 'grayscale')
        converted_img = rgb2gray(img);
    elseif strcmp(color_space, 'HSV')
        converted_img = rgb2hsv(img);
    end
    figure;
    subplot(1, 2, 1);
    imshow(img);
    title('Original Image');
    subplot(1, 2, 2);
    imshow(converted_img);
    title(['Image in ', color_space, ' Color Space']);
end

