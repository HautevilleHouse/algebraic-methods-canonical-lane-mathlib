import AlgebraicMethodsCanonicalLaneLean.AlgebraicAdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure Representation (G : Type u) (V : Type v) [Group G] [AddCommGroup V] where
  action : G → V → V
  linearity : action g ∘ action h = action (g*h)  -- rough approximation

def representation_closed (R : Representation G V) : Prop :=
  ∀ g h : G, R.action (g*h) = R.action g ∘ R.action h

theorem representation_character_orthogonality {G : Type u} [FiniteGroup G] {V : Type v} [Field V] 
    (R : Representation G V) (χ : Character R) : Prop :=
  ∀ g h : G, χ(g) * χ(h) = |G| * (if g = h then 1 else 0)

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse