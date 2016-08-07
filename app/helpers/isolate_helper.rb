module IsolateHelper

  def bloodstream_infection_source_options
    [
      [ 'Bone/Joint Fluid', 'BON' ],
      [ 'Dialysis Line', 'DIA' ],
      [ 'Endocarditis', 'END' ],
      [ 'Ear, nose, throat', 'ENT' ],
      [ 'Genital tract', 'GEN' ],
      [ 'GI tract/Bowel', 'GI' ],
      [ 'Intravenous/IV Line/Catheter tip', 'IV' ],
      [ 'Lower respiratory tract (pneumonia)', 'LRT' ],
      [ 'Urine/Urinary Tract', 'UR' ],
      [ 'Skin/Skin structure/Wound/Drainage/Ulcer/Abscess', 'WD' ],
      [ 'Other or Unknown', 'OTH' ],
    ].collect{ |arr| ["#{arr.last} - #{arr.first}", arr.last] }.sort
  end

  def service_options
    [
      [ 'Ambulatory/Outpatient', 'AMB' ],
      [ 'Burn', 'BUR' ],
      [ 'Cardiothoracic/Pulmonary', 'CAR' ],
      [ 'Dermatology', 'DER' ],
      [ 'Dialysis', 'DIA' ],
      [ 'Ear, Nose, Throat (Otolarynology)', 'ENT' ],
      [ 'Emergency', 'ER' ],
      [ 'Family Practice', 'FAM' ],
      [ 'Gastroenterology/GI', 'GEN' ],
      [ 'Geriatics', 'GER' ],
      [ 'Hematology/Oncology', 'HEM' ],
      [ 'Intensive Care Unit', 'ICU' ],
      [ 'Infectious Disease', 'ID' ],
      [ 'Long-Term Care', 'LTC' ],
      [ 'Internal Medicine', 'MED' ],
      [ 'Neurology', 'NEU' ],
      [ 'Neurosurgery', 'NS' ],
      [ 'Obstetrics/Gynecology', 'OBGYN' ],
      [ 'Ophthalmology', 'OPH' ],
      [ 'Orthopedics', 'ORT' ],
      [ 'Pediatrics/Neonate', 'PED' ],
      [ 'Psychiatry', 'PSY' ],
      [ 'Renal', 'REN' ],
      [ 'Rehabilitation', 'RH' ],
      [ 'Surgery', 'SUR' ],
      [ 'Transplant', 'TRA' ],
      [ 'Trauma', 'TRM' ],
      [ 'Urology', 'URO' ],
    ].collect{ |arr| ["#{arr.last} - #{arr.first}", arr.last] }.sort
  end

  def primary_diagnosis_options
    [
      [ 'Abdominal pain', 'ABD' ],
      [ 'Bladder', 'BLAD' ],
      [ 'Burn', 'BUR' ],
      [ 'Cancer/Leukemia/Lymphoma', 'CAN' ],
      [ 'Cardiovascular', 'CAR' ],
      [ 'Cellulitis/Skin infection', 'CELL' ],
      [ 'Cystic fibrosis', 'CF' ],
      [ 'Cystitis', 'CYS' ],
      [ 'Diabetes', 'DIAB' ],
      [ 'Fever', 'FEV' ],
      [ 'Gastrointestinal', 'GI' ],
      [ 'HIV/AIDS', 'HIV' ],
      [ 'Infection', 'INF' ],
      [ 'Neurologic', 'NEU' ],
      [ 'Pulmonary', 'PULM' ],
      [ 'Renal', 'REN' ],
      [ 'Sepsis', 'SEP' ],
      [ 'Stroke', 'STRO' ],
      [ 'Transplantation', 'TRA' ],
      [ 'Trauma', 'TRM' ],
      [ 'Other', 'OTH' ],
    ].collect{ |arr| ["#{arr.last} - #{arr.first}", arr.last] }.sort
  end

  def sex_options
    [
      [ "Female", "F" ],
      [ "Male", "M" ],
    ]
  end

end
