export function addRelevancyScore(clinics) {
  return clinics.map((clinic, index) => {
    clinic.relevancyScore = index;
    return clinic;
  });
}

export function aaa() {
  return 5;
}
