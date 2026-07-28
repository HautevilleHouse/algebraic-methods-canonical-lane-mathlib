import AlgebraicMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure GroupPackage where
  groupAxioms : Prop
  subgroupStructure : Prop
  quotientGroup : Prop
  universalPropertyFreeGroup : Prop
  structureTheorem : Prop

structure GroupEvidence (G : GroupPackage) where
  groupAxiomsClosed : G.groupAxioms
  subgroupStructureClosed : G.subgroupStructure
  quotientGroupClosed : G.quotientGroup
  universalPropertyFreeGroupClosed : G.universalPropertyFreeGroup
  structureTheoremClosed : G.structureTheorem

def GroupClosed (G : GroupPackage) : Prop :=
  G.groupAxioms ∧ G.subgroupStructure ∧ G.quotientGroup ∧
  G.universalPropertyFreeGroup ∧ G.structureTheorem

theorem group_closed_from_evidence (G : GroupPackage) (E : GroupEvidence G) :
    GroupClosed G := by
  exact And.intro E.groupAxiomsClosed
    (And.intro E.subgroupStructureClosed
      (And.intro E.quotientGroupClosed
        (And.intro E.universalPropertyFreeGroupClosed E.structureTheoremClosed)))

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse