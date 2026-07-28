import AlgebraicMethodsCanonicalLaneLean.AlgebraicGateLemmas

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

def ConstrainedAlgebraicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_algebraic_endgame (A : AdmissibleClass) :
    ConstrainedAlgebraicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse