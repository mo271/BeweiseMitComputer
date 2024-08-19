import Mathlib

open Nat Rat

#check Rat.sqrt

#check Rat.sqrt (2 : ℕ)

noncomputable def sqrt_2 := Real.sqrt 2

-- Wir können jede rationale Zahl `r` als Bruch ausdrücken via `r.nat` and `r.den`
example : ∀ r : ℚ, ∃ a b : ℤ,  r = (a /. b) := by
  intro r
  use r.num, r.den
  exact Eq.symm (divInt_self r)

-- Die Zahlen `r.num` und `r.den` sind automatisch als Teilerfremd gewählt
example (r : ℚ) : (r.num).natAbs.Coprime r.den := by
  exact r.reduced

variable (m : ℕ)

example : 1 < 2 := by exact Nat.one_lt_two

example : 2 > 1 := by exact Nat.one_lt_two

theorem hilfslemma (a b : ℕ) (h : a.Coprime b) : a^2 ≠ 2 * b^2 := by
  by_contra eq
  have ha : 2 ∣ a := by
    rw [← even_iff_two_dvd, ← @Nat.even_pow' a 2 (by decide)]
    use b ^2
    linarith
  have hb : 2 ∣ b := by
    have ⟨r, hr⟩ := even_iff_two_dvd.mpr ha
    rw [hr] at eq
    rw [← even_iff_two_dvd, ← @Nat.even_pow' b 2 (by simp)]
    use r ^ 2
    linarith
  simpa [h] using (Nat.dvd_gcd ha hb)


theorem no_sqrt_2_in_rat (r : ℚ) : r ^ 2 ≠ 2 := by
  have ineq := hilfslemma r.num.natAbs r.den r.reduced
  by_contra h
  qify at ineq
  have : r ^ 2 = r.num^2 / r.den^2 := by
    nth_rw 1 [← Rat.num_div_den r]
    simp
  simp [← h, this] at ineq


theorem sqrt_2_irrational : ∀ r : ℚ, ((r : ℝ) ≠ sqrt_2) := by
  sorry

-- Hier kann man `no_sqrt_2_in_rat` benutzen:
theorem no_fourth_root_2_in_rat : ∀ r : ℚ, r^4 ≠ 4 := by
  sorry

-- Formuliere (und Beweise) das folgende Resultat selbst
-- theorem no_rational_sqrt_5 : ... := by
--  sorry

theorem no_cube_root_2_in_rat : ∀ r : ℚ, r^3 ≠ 2 := by
  sorry

theorem no_square_root_unless_perfect_square (r : ℚ) (n : ℕ):
    r^2 = n → ∃ m : ℕ, n = m^2 := by
  sorry
