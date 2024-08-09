#eval "Hallo Sommeruniversität!"

def fib : Nat → Nat
  | 0 => 0
  | 1 => 1
  | Nat.succ (Nat.succ  n) => fib n + fib (n + 1)

#eval fib 14

inductive weekday : Type :=
| Sunday : weekday
| Monday : weekday
| Tuesday : weekday
| Wednesday : weekday
| Thursday : weekday
| Friday : weekday
| Saturday : weekday
deriving Repr

inductive month : Type :=
| January : month
| February : month
| March : month
| April : month
| May : month
| June : month
| July : month
| August : month
| September : month
| October : month
| November : month
| December : month
deriving Repr

namespace weekday
namespace month


def tomorrow (d : weekday) : weekday :=
weekday.casesOn d Monday Tuesday Wednesday Thursday Friday Saturday Sunday


def yesterday (d : weekday) : weekday :=
weekday.casesOn d Saturday Sunday Monday Tuesday Wednesday Thursday Friday

theorem yesterday_tomorrow (d : weekday) : yesterday (tomorrow d) = d := by
  cases d <;> rfl

def weekday_of_num (n : Fin 7) : weekday :=
  match n with
  | 0 => Sunday
  | 1 => Monday
  | 2 => Tuesday
  | 3 => Wednesday
  | 4 => Thursday
  | 5 => Friday
  | 6 => Saturday

#eval tomorrow (weekday_of_num 4)

def first_day_of_month (m : month) : Fin 7 :=
  match m with
  | month.January => 1
  | month.February => 4
  | month.March => 3
  | month.April => 6
  | month.May => 1
  | month.June => 4
  | month.July => 6
  | month.August => 2
  | month.September => 5
  | month.October => 0
  | month.November => 3
  | month.December => 5

def before_leap_day : month →  Bool
  | month.January
  | month.February => true
  | month.March
  | month.April
  | month.May
  | month.June
  | month.July
  | month.August
  | month.September
  | month.October
  | month.November
  | month.December => false


def day_of_week (day : Nat) (m : month) (year : Nat) : weekday := by
  let year' := if before_leap_day m then year - 1 else year
  let year_tail := year' % 100
  let year_head := (⟨year' / 100 % 4, Fin.ofNat.proof_1 (year' / 100)⟩ : Fin 4)
  let century_correction :=
    match year_head with
    | 0 => (6 : Fin 7)
    | 1 => (4 : Fin 7)
    | 2 => (2 : Fin 7)
    | 3 => (0 : Fin 7)
  exact weekday_of_num <|
    ⟨day % 7, (Fin.ofNat.proof_1 day)⟩ +
    (first_day_of_month m) +
    ⟨year_tail % 7, Fin.ofNat.proof_1 year_tail⟩ +
    ⟨(year_tail / 4) % 7, Fin.ofNat.proof_1 (year_tail/4)⟩
    + century_correction

#eval day_of_week 1 month.January 1900

#eval day_of_week 21 month.March 2024
