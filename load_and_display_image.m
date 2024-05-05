function load_and_display_image(filename, color_space)
    img = imread(filename);
    if strcmp(color_space, 'RGB')
        img = im2double(img);
    elseif strcmp(color_space, 'CMYK')
        img = rgb2cmyk(im2double(img));
    end
    figure;
    imshow(img, []);
    title(['Image in ', color_space, ' Color Space']);
end

