import AlgebraicMethodsCanonicalLaneLean.AlgebraicAdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure Category (Obj : Type u) where
  Hom : Obj → Obj → Type v
  id : ∀ X, Hom X X
  comp : ∀ X Y Z, Hom X Y → Hom Y Z → Hom X Z
  associativity : ∀ X Y Z W (f : Hom X Y) (g : Hom Y Z) (h : Hom Z W), comp X Z W (comp X Y Z f g) h = comp X Y W f (comp Y Z W g h)
  identity_left : ∀ X Y (f : Hom X Y), comp X X Y (id X) f = f
  identity_right : ∀ X Y (f : Hom X Y), comp X Y Y f (id Y) = f

def category_closed (C : Category Obj) : Prop :=
  C.associativity ∧ C.identity_left ∧ C.identity_right

theorem yoneda_lemma {C : Category Obj} (F : Functor C (Setᵒᵖ)) : Prop :=
  ∀ (X : Obj), NatTrans (Representable.embedding X) F

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse