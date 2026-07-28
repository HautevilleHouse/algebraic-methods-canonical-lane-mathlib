import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

def AlgebraicWitnessClosed (O : AlgebraicAdmissibleObject) : Prop :=
  O.axioms

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AlgebraicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse