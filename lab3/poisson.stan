data {
    real<lower=0> lambda;
}


generated quantities {
    real<lower=0> y;
    y = poisson_rng(lambda);
}
