# M31 unresolved odd sample interpretation

The frozen sample contains 4,096 unique odd classes from the 23,642,078 classes left after the saved M31 screen. The independently replayed concrete odd-to-odd descent rate within 64 steps was 2,002/2,048 (97.754%) in discovery and 2,007/2,048 (97.998%) in holdout. No sampled class gained a strict affine certificate at steps 129–192.

The registered initial-valuation hypothesis did not pass: every sampled representative had `v2(3n+1) = 1`, giving a maximum deviation of `0.5` from the unconditioned geometric buckets. This is a sample-selection issue. The follow-up exact audit in `../m31-residual-initial-valuation-v1/` found that all 23,642,078 unresolved classes are odd and that every fixed representative `r + 2^31` has valuation one. Because changing the representative by another multiple of `2^31` changes `3n+1` by a multiple of `2^31`, the valuation remains one for every member of each unresolved affine class.

Thus the initial valuation is fixed by conditioning on survival of the earlier affine screen; it is not an observation about unconditioned odd integers. Future residual-structure samples should examine later odd-to-odd valuations or another statistic not forced by the screen. The holdout confirms only the registered finite rates, and none of these results establishes a global descent theorem.
