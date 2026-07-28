import HautevilleHouse.AlgebraicMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure RepresentationTheoremPackage (A : AdmissibleClass) where
  representedObject : Type u
  representationFunctor : Type v
  fullyFaithful : Prop
  essentialSurjective : Prop

structure RepresentationTheoremEvidence (A : AdmissibleClass) (R : RepresentationTheoremPackage A) where
  fullyFaithfulClosed : R.fullyFaithful
  essentialSurjectiveClosed : R.essentialSurjective

def RepresentationTheoremClosed (A : AdmissibleClass) (R : RepresentationTheoremPackage A) : Prop :=
  R.fullyFaithful ∧ R.essentialSurjective

theorem representation_theorem_closed_from_evidence (A : AdmissibleClass) (R : RepresentationTheoremPackage A)
    (E : RepresentationTheoremEvidence A R) : RepresentationTheoremClosed A R := by
  exact And.intro E.fullyFaithfulClosed E.essentialSurjectiveClosed

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse