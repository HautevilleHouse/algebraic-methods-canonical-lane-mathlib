import canonicalLaneMathlib.AdmissibleClass
import AlgebraicMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AlgebraicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse