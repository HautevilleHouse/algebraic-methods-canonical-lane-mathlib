import HautevilleHouse.AlgebraicMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure StructureDecompositionPackage (A : AdmissibleClass) where
  components : List Type u
  decompositionMaps : Type v
  directSumProperty : Prop
  uniquenessOfDecomposition : Prop

structure StructureDecompositionEvidence (A : AdmissibleClass) (D : StructureDecompositionPackage A) where
  directSumPropertyClosed : D.directSumProperty
  uniquenessOfDecompositionClosed : D.uniquenessOfDecomposition

def StructureDecompositionClosed (A : AdmissibleClass) (D : StructureDecompositionPackage A) : Prop :=
  D.directSumProperty ∧ D.uniquenessOfDecomposition

theorem structure_decomposition_closed_from_evidence (A : AdmissibleClass) (D : StructureDecompositionPackage A)
    (E : StructureDecompositionEvidence A D) : StructureDecompositionClosed A D := by
  exact And.intro E.directSumPropertyClosed E.uniquenessOfDecompositionClosed

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse