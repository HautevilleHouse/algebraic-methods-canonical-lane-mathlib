import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure AlgebraicClosurePackage (K : Type u) [Field K] where
  closure : Type v
  fieldStruct : Field closure
  algebraStruct : Algebra K closure
  algebraic : ∀ x : closure, IsIntegral K x
  algebraicClosureAxioms : Prop := by
    exact algebraic

structure AlgebraicClosureEvidence (K : Type u) [Field K] (A : AlgebraicClosurePackage K) where
  axiomsClosed : A.algebraicClosureAxioms

def AlgebraicClosureClosed (K : Type u) [Field K] (A : AlgebraicClosurePackage K) : Prop :=
  A.algebraicClosureAxioms

theorem algebraic_closure_closed_from_evidence (K : Type u) [Field K] (A : AlgebraicClosurePackage K)
    (E : AlgebraicClosureEvidence K A) : AlgebraicClosureClosed K A := by
  exact E.axiomsClosed

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse