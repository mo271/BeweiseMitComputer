import Mathlib

open BigOperators

#eval  ∑ i in (Finset.range 5), (2 * i + 1)

#check Nat.succ
#eval Nat.succ 7

theorem sum_of_odd_numbers (n : ℕ) : ∑ i in (Finset.range n), (2 * i + 1) = n ^ 2 := by
  sorry

theorem power_of_seventeen : ∀ n : ℕ, ∃ (a  b : ℕ),  17 ^ n = a ^ 2 + b ^ 2 := by
  sorry

theorem power_of_k_eq_sum_of_squares (n : ℕ) (k : ℕ) (hk : ∃ (x y : ℕ), k = x ^ 2 + y ^ 2) :
    ∃ (a  b : ℕ),  k ^ n = a ^ 2 + b ^ 2 := by
  sorry

theorem odd_or_even (n : ℕ) : Even n ∨ Odd n := by
  sorry
