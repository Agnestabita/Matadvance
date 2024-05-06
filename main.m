%% Konstruksi Genetic Algorithm(GA) Menggunakan Matlab

% Alel
% Gen & nilai bobot
% Kromosom
% Populasi

clc
clear

%%Gen
target = 'agnes'
panjang = length(target);
% random_number = randi([32,126], 1, panjang);
% genes = char(random_number);
% genes
genes = create_genes(panjang)

% target = 'Lennox_Larwuy'
% len = length(target);
% genes = create_genes(len);

%%Fitnes
fitnes = calculate_fitnes(genes, target)
