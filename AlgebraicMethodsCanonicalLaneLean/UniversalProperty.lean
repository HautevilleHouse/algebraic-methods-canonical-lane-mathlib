import HautevilleHouse.AlgebraicMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure UniversalPropertyPackage (A : AdmissibleClass) where
  universalObject : Type u
  universalMorphism : Type v
  uniquenessCondition : Prop
  existenceCondition : Prop

structure UniversalPropertyEvidence (A : AdmissibleClass) (U : UniversalPropertyPackage A) where
  uniquenessClosed : U.uniquenessCondition
  existenceClosed : U.existenceCondition

def UniversalPropertyClosed (A : AdmissibleClass) (U : UniversalPropertyPackage A) : Prop :=
  U.uniquenessCondition ∧ U.existenceCondition

theorem universal_property_closed_from_evidence (A : AdmissibleClass) (U : UniversalPropertyPackage A)
    (E : UniversalPropertyEvidence A U) : UniversalPropertyClosed A U := by
  exact And.intro E.uniquenessClosed E.existenceClosed

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse