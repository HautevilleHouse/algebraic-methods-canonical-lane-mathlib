import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicMethodsCanonicalLaneLean

structure GaloisCorrespondencePackage (K : Type u) [Field K] (L : Type v) [Field L] [Algebra K L] where
  isGalois : IsGalois K L
  intermediateFields : Set (IntermediateField K L)
  subgroups : Set (Subgroup (Gal(L/K)))
  galoisConnection : GaloisConnection (fun (E : IntermediateField K L) => Gal(L/E)) (fun (H : Subgroup (Gal(L/K))) => fixedField H)
  galoisCorrespondenceAxioms : Prop := by
    exact isGalois ∧ galoisConnection.isOrderIsoOfGalois

structure GaloisCorrespondenceEvidence (K : Type u) [Field K] (L : Type v) [Field L] [Algebra K L]
    (G : GaloisCorrespondencePackage K L) where
  axiomsClosed : G.galoisCorrespondenceAxioms

def GaloisCorrespondenceClosed (K : Type u) [Field K] (L : Type v) [Field L] [Algebra K L]
    (G : GaloisCorrespondencePackage K L) : Prop :=
  G.galoisCorrespondenceAxioms

theorem galois_correspondence_closed_from_evidence (K : Type u) [Field K] (L : Type v) [Field L] [Algebra K L]
    (G : GaloisCorrespondencePackage K L) (E : GaloisCorrespondenceEvidence K L G) :
    GaloisCorrespondenceClosed K L G := by
  exact E.axiomsClosed

end AlgebraicMethodsCanonicalLaneLean
end HautevilleHouse