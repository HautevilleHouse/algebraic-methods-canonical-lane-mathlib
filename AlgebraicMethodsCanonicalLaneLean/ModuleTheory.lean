import AlgebraicMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure ModulePackage (R : RingPackage) where
  moduleAxioms : Prop
  linearMapStructure : Prop
  tensorProduct : Prop
  exactSequence : Prop
  structureDecomposition : Prop

structure ModuleEvidence {R : RingPackage} (M : ModulePackage R) where
  moduleAxiomsClosed : M.moduleAxioms
  linearMapStructureClosed : M.linearMapStructure
  tensorProductClosed : M.tensorProduct
  exactSequenceClosed : M.exactSequence
  structureDecompositionClosed : M.structureDecomposition

def ModuleClosed {R : RingPackage} (M : ModulePackage R) : Prop :=
  M.moduleAxioms ∧ M.linearMapStructure ∧ M.tensorProduct ∧
  M.exactSequence ∧ M.structureDecomposition

theorem module_closed_from_evidence {R : RingPackage} (M : ModulePackage R) (E : ModuleEvidence M) :
    ModuleClosed M := by
  exact And.intro E.moduleAxiomsClosed
    (And.intro E.linearMapStructureClosed
      (And.intro E.tensorProductClosed
        (And.intro E.exactSequenceClosed E.structureDecompositionClosed)))

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse