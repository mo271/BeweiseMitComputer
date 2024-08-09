import Mathlib

open Rat

noncomputable def sqrt_2 := Real.sqrt 2

-- Wir können jede rationale Zahl `r` als Bruch ausdrücken via `r.nat` and `r.den`
example : ∀ r : ℚ, ∃ a b : ℤ,  r = (a /. b) := by
  intro r
  use r.num, r.den
  exact Eq.symm (divInt_self r)

-- Die Zahlen `r.num` und `r.den` sind automatisch als Teilerfremd gewählt
example (r : ℚ) : (r.num).natAbs.Coprime r.den := by
  exact r.reduced

theorem no_sqrt_2_in_rat : ∀ r : ℚ, r^2 ≠ 2 := by
  sorry

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
