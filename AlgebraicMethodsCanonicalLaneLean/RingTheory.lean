import AlgebraicMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure RingPackage where
  ringAxioms : Prop
  idealStructure : Prop
  quotientRing : Prop
  polynomialRingUniversal : Prop
  primeIdealTheorem : Prop

structure RingEvidence (R : RingPackage) where
  ringAxiomsClosed : R.ringAxioms
  idealStructureClosed : R.idealStructure
  quotientRingClosed : R.quotientRing
  polynomialRingUniversalClosed : R.polynomialRingUniversal
  primeIdealTheoremClosed : R.primeIdealTheorem

def RingClosed (R : RingPackage) : Prop :=
  R.ringAxioms ∧ R.idealStructure ∧ R.quotientRing ∧
  R.polynomialRingUniversal ∧ R.primeIdealTheorem

theorem ring_closed_from_evidence (R : RingPackage) (E : RingEvidence R) :
    RingClosed R := by
  exact And.intro E.ringAxiomsClosed
    (And.intro E.idealStructureClosed
      (And.intro E.quotientRingClosed
        (And.intro E.polynomialRingUniversalClosed E.primeIdealTheoremClosed)))

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse