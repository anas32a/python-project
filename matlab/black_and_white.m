function img = image_noire(h, l)
    img = zeros(h, l);
end

function img = image_blanche(h, l)
    img = ones(h, l);
end

function img = creerImgBlancNoir(h, l)
    img = zeros(h, l);
    for i = 1:h
        for j = 1:l
            img(i, j) = mod(i + j, 2);
        end
    end
end

function img_neg = negatif(img)
    img_neg = 1 - img;
end
