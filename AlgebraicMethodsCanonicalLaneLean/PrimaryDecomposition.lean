import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure PrimaryDecompositionPackage (R : Type u) [CommRing R] [IsDomain R] [IsPrincipalIdealRing R]
    (M : Type v) [AddCommGroup M] [Module R M] where
  isTorsion : ∀ x : M, ∃ r : R, r ≠ 0 ∧ r • x = 0
  cyclicDecomposition : List (Submodule R M)
  sumDirect : Submodule.sum cyclicDecomposition = ⊤
  independent : Submodule.independent (fun i : Fin (cyclicDecomposition.length) => cyclicDecomposition.get i)
  eachCyclic : ∀ N ∈ cyclicDecomposition, ∃ a : M, N = Submodule.span R {a}
  primaryDecompositionAxioms : Prop := by
    exact isTorsion ∧ sumDirect ∧ independent ∧ eachCyclic

structure PrimaryDecompositionEvidence (R : Type u) [CommRing R] [IsDomain R] [IsPrincipalIdealRing R]
    (M : Type v) [AddCommGroup M] [Module R M] (P : PrimaryDecompositionPackage R M) where
  axiomsClosed : P.primaryDecompositionAxioms

def PrimaryDecompositionClosed (R : Type u) [CommRing R] [IsDomain R] [IsPrincipalIdealRing R]
    (M : Type v) [AddCommGroup M] [Module R M] (P : PrimaryDecompositionPackage R M) : Prop :=
  P.primaryDecompositionAxioms

theorem primary_decomposition_closed_from_evidence (R : Type u) [CommRing R] [IsDomain R] [IsPrincipalIdealRing R]
    (M : Type v) [AddCommGroup M] [Module R M] (P : PrimaryDecompositionPackage R M)
    (E : PrimaryDecompositionEvidence R M P) : PrimaryDecompositionClosed R M P := by
  exact E.axiomsClosed

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse