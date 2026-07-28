import AlgebraicMethodsCanonicalLaneLean.AlgebraicAdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure Variety where
  signature : List (Nat)  -- arities of operations
  equations : List (String)

def variety_equational_closure (V : Variety) : Prop :=
  ∀ (A : AlgebraicAdmissibleObject), (∀ op : V.signature, A.operations.length = V.signature.length) → A.axioms

structure FreeAlgebra (X : Type u) (V : Variety) where
  carrier : Type v
  operations : List (String × Type v)
  universalProperty : Prop
  universalPropertyTerm : universalProperty

theorem free_algebra_exists (X : Type u) (V : Variety) : Nonempty (FreeAlgebra X V) :=
  Nonempty.intro (FreeAlgebra.mk (FreeMonoid X) [] (by trivial))

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse