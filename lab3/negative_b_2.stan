data {
    real<lower=0> alpha;
    real<lower=0> beta;
}


generated quantities {
    real<lower=0> y;
    y = neg_binomial_2_rng(alpha,beta);
}
