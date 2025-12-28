function img = initImageRGB(h, l)
    img = randi([0 255], 3, h, l);
end

function imgH = symetrieH(img)
    imgH = img(:, end:-1:1, :);
end

function imgV = symetrieV(img)
    imgV = img(:, :, end:-1:1);
end

function imgray = grayscale(imageRGB)
    [~, n, m] = size(imageRGB);
    imgray = zeros(n, m);

    for i = 1:n
        for j = 1:m
            r = imageRGB(1, i, j);
            g = imageRGB(2, i, j);
            b = imageRGB(3, i, j);

            maxi = max([r g b]);
            mini = min([r g b]);

            imgray(i, j) = floor((maxi + mini) / 2);
        end
    end
end
