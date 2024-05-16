function GA(target, population_size, mutation_rate)

% Menginisialisasi populasi
population = create_population(target, population_size);

islooping = true;
generation = 0;
while islooping
    % Evaluation
    islooping = evaluation(population);
    % Display
    logging(population, target, generation);
    % Selection
    [parent1, parent2] = selection(population);
    % Crossover
    [child1, child2] = crossover(parent1, parent2);
    % mutation
    mutant1 = mutation(child1, mutation_rate);
    mutant2 = mutation(child2, mutation_rate);
    % Hitung fitnes mutant
%     mutant1.fitnes = calculate_fitnes(mutant1.genes, target);
%     mutant2.fitnes = calculate_fitnes(mutant2.genes, target);
    % Membuat new generation
    children = [mutant1 mutant2]
    population = regeneration(children, population);
    generation = generation + 1;
end
end
