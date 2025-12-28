function Img = lectureImage(chemin)
    Img = imread(chemin);
end

function AfficherImg(img)
    imshow(img, []);
end

function saveImage(img, nom)
    if nargin < 2
        nom = 'image1.png';
    end
    imwrite(img, nom);
end
