import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure VectorSpacePackage (K : Type u) [Field K] where
  carrier : Type v
  add : carrier → carrier → carrier
  smul : K → carrier → carrier
  zero : carrier
  add_assoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  add_comm : ∀ a b : carrier, add a b = add b a
  zero_add : ∀ a : carrier, add zero a = a
  add_zero : ∀ a : carrier, add a zero = a
  neg : carrier → carrier
  add_left_neg : ∀ a : carrier, add (neg a) a = zero
  smul_add : ∀ (r : K) (a b : carrier), smul r (add a b) = add (smul r a) (smul r b)
  add_smul : ∀ (r s : K) (a : carrier), smul (r + s) a = add (smul r a) (smul s a)
  mul_smul : ∀ (r s : K) (a : carrier), smul (r * s) a = smul r (smul s a)
  one_smul : ∀ a : carrier, smul 1 a = a
  vectorSpaceAxioms : Prop := by
    exact add_assoc ∧ add_comm ∧ zero_add ∧ add_zero ∧ add_left_neg ∧
      smul_add ∧ add_smul ∧ mul_smul ∧ one_smul

structure VectorSpaceEvidence (K : Type u) [Field K] (V : VectorSpacePackage K) where
  axiomsClosed : V.vectorSpaceAxioms

def VectorSpaceClosed (K : Type u) [Field K] (V : VectorSpacePackage K) : Prop :=
  V.vectorSpaceAxioms

theorem vector_space_closed_from_evidence (K : Type u) [Field K] (V : VectorSpacePackage K)
    (E : VectorSpaceEvidence K V) : VectorSpaceClosed K V := by
  exact E.axiomsClosed

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse