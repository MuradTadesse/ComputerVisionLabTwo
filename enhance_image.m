function enhanced_img = enhance_image(img, method)
    if strcmp(method, 'histeq')
        enhanced_img = histeq(img);
    elseif strcmp(method, 'adapthisteq')
        enhanced_img = adapthisteq(img);
    end
    figure;
    subplot(1, 2, 1);
    imshow(img);
    title('Original Image');
    subplot(1, 2, 2);
    imshow(enhanced_img);
    title('Enhanced Image');
end

