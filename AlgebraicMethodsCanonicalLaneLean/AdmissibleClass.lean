import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure AlgebraicAdmittedObject where
  carrier : Type u
  algebraStructure : Prop
  conclusion : algebraStructure

structure AdmissibleClass where
  object : AlgebraicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AlgebraicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def AlgebraicWitnessClosed (O : AlgebraicAdmittedObject) : Prop :=
  O.algebraStructure

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse