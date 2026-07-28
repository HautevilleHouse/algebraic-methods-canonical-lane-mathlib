import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure AlgebraicAdmissibleObject where
  structure : Type u
  axioms : Prop
  operations : List (String × Type v)
  conclusion : axioms

structure AdmissibleClass where
  object : AlgebraicAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AlgebraicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse