function trimWiki () {
  echo $1 | sed 's/^https:\/\/en.wikipedia.org\/wiki\///'
}
function firstnontagline ()
{
  while read -r LINE; do
    if [[ $LINE != "<"* ]]; then
      echo $LINE
      break
    fi
  done
}

function getletter() {
  found_ipa=$(curl -sL $1 | \
    pup 'html table.infobox th.infobox-header span.IPA' | \
    tail -n +2 | firstnontagline | sed 's/^ *//')
    echo "      \"$(trimWiki $1 | sed 's/%E2%80%93/-/')\": \"$found_ipa\","
}

function wikipediaWebCrawling () {
  getletter https://en.wikipedia.org/wiki/Voiceless_bilabial_nasal
  getletter https://en.wikipedia.org/wiki/Voiced_bilabial_nasal
  getletter https://en.wikipedia.org/wiki/Voiceless_labiodental_nasal
  getletter https://en.wikipedia.org/wiki/Voiced_labiodental_nasal
  getletter https://en.wikipedia.org/wiki/Voiced_linguolabial_nasal
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_nasal
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_nasal
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_nasal
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_nasal
  getletter https://en.wikipedia.org/wiki/Voiceless_palatal_nasal
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_nasal
  getletter https://en.wikipedia.org/wiki/Voiceless_velar_nasal
  getletter https://en.wikipedia.org/wiki/Voiced_velar_nasal
  getletter https://en.wikipedia.org/wiki/Voiceless_uvular_nasal
  getletter https://en.wikipedia.org/wiki/Voiced_uvular_nasal
  getletter https://en.wikipedia.org/wiki/Voiceless_bilabial_plosive
  getletter https://en.wikipedia.org/wiki/Voiced_bilabial_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_labiodental_plosive
  getletter https://en.wikipedia.org/wiki/Voiced_labiodental_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_linguolabial_plosive
  getletter https://en.wikipedia.org/wiki/Voiced_linguolabial_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_plosive
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_plosive
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_palatal_plosive
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_velar_plosive
  getletter https://en.wikipedia.org/wiki/Voiced_velar_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_uvular_plosive
  getletter https://en.wikipedia.org/wiki/Voiced_uvular_plosive
  getletter https://en.wikipedia.org/wiki/Epiglottal_plosive
  getletter https://en.wikipedia.org/wiki/Glottal_stop
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_postalveolar_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_postalveolar_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolo-palatal_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_alveolo-palatal_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_bilabial_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_bilabial_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_labiodental_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_labiodental_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_linguolabial_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_linguolabial_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_dental_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_dental_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_non-sibilant_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_non-sibilant_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_postalveolar_non-sibilant_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_postalveolar_non-sibilant_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_non-sibilant_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_non-sibilant_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_palatal_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_velar_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_velar_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_uvular_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_uvular_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_pharyngeal_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_pharyngeal_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_glottal_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_glottal_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_labiodental_approximant
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_approximant
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_approximant
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_approximant
  getletter https://en.wikipedia.org/wiki/Voiced_velar_approximant
  getletter https://en.wikipedia.org/wiki/Creaky-voiced_glottal_approximant
  getletter https://en.wikipedia.org/wiki/Voiced_bilabial_flap
  getletter https://en.wikipedia.org/wiki/Voiced_labiodental_flap
  getletter https://en.wikipedia.org/wiki/Voiced_linguolabial_tap
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_tap
  getletter https://en.wikipedia.org/wiki/Voiced_dental_and_alveolar_taps_and_flaps
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_flap
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_flap
  getletter https://en.wikipedia.org/wiki/Voiced_uvular_tap_and_flap
  getletter https://en.wikipedia.org/wiki/Voiced_epiglottal_tap
  getletter https://en.wikipedia.org/wiki/Voiceless_bilabial_trill
  getletter https://en.wikipedia.org/wiki/Voiced_bilabial_trill
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_trill
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_trill
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_trill
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_trill
  getletter https://en.wikipedia.org/wiki/Voiceless_uvular_trill
  getletter https://en.wikipedia.org/wiki/Voiced_uvular_trill
  getletter https://en.wikipedia.org/wiki/Voiceless_epiglottal_trill
  getletter https://en.wikipedia.org/wiki/Voiced_epiglottal_trill
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_lateral_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_lateral_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_lateral_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_lateral_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_palatal_lateral_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_lateral_fricative
  getletter https://en.wikipedia.org/wiki/Voiceless_velar_lateral_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_velar_lateral_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_lateral_approximant
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_lateral_approximant
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_lateral_approximant
  getletter https://en.wikipedia.org/wiki/Voiced_velar_lateral_approximant
  getletter https://en.wikipedia.org/wiki/Voiced_uvular_lateral_approximant
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_lateral_flap
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_lateral_flap
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_lateral_flap
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_lateral_flap
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_lateral_flap
  getletter https://en.wikipedia.org/wiki/Voiced_velar_lateral_tap

  getletter https://en.wikipedia.org/wiki/Bilabial_ejective_stop
  getletter https://en.wikipedia.org/wiki/Alveolar_ejective_stop
  getletter https://en.wikipedia.org/wiki/Retroflex_ejective_stop
  getletter https://en.wikipedia.org/wiki/Palatal_ejective_stop
  getletter https://en.wikipedia.org/wiki/Velar_ejective_stop
  getletter https://en.wikipedia.org/wiki/Uvular_ejective_stop
  getletter https://en.wikipedia.org/wiki/Epiglottal_ejective
  getletter https://en.wikipedia.org/wiki/Bilabial_ejective_fricative
  getletter https://en.wikipedia.org/wiki/Labiodental_ejective_fricative
  getletter https://en.wikipedia.org/wiki/Dental_ejective_fricative
  getletter https://en.wikipedia.org/wiki/Alveolar_ejective_fricative
  getletter https://en.wikipedia.org/wiki/Palato-alveolar_ejective_fricative
  getletter https://en.wikipedia.org/wiki/Retroflex_ejective_fricative
  getletter https://en.wikipedia.org/wiki/Alveolo-palatal_ejective_fricative
  getletter https://en.wikipedia.org/wiki/Velar_ejective_fricative
  getletter https://en.wikipedia.org/wiki/Uvular_ejective_fricative
  getletter https://en.wikipedia.org/wiki/Alveolar_lateral_ejective_fricative
  getletter https://en.wikipedia.org/wiki/Tenuis_bilabial_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Tenuis_dental_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Tenuis_alveolar_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Tenuis_palatal_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Voiced_bilabial_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Voiced_dental_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Bilabial_nasal_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Dental_nasal_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Alveolar_nasal_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Palatal_nasal_click # TODO: Add Velar/Uvular distinction
  getletter https://en.wikipedia.org/wiki/Tenuis_alveolar_lateral_click
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_lateral_click
  getletter https://en.wikipedia.org/wiki/Alveolar_lateral_nasal_click
  getletter https://en.wikipedia.org/wiki/Voiced_bilabial_implosive
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_implosive
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_implosive
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_implosive
  getletter https://en.wikipedia.org/wiki/Voiced_velar_implosive
  getletter https://en.wikipedia.org/wiki/Voiced_uvular_implosive
  getletter https://en.wikipedia.org/wiki/Voiceless_bilabial_implosive
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_implosive
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_implosive
  getletter https://en.wikipedia.org/wiki/Voiceless_palatal_implosive
  getletter https://en.wikipedia.org/wiki/Voiceless_velar_implosive
  getletter https://en.wikipedia.org/wiki/Voiceless_uvular_implosive

  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_postalveolar_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_postalveolar_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolo-palatal_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_alveolo-palatal_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_bilabial_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_bilabial_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_labiodental_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_labiodental_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_dental_non-sibilant_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_dental_non-sibilant_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_non-sibilant_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_non-sibilant_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_postalveolar_non-sibilant_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_postalveolar_non-sibilant_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_palatal_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_velar_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_velar_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_uvular_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_uvular_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_epiglottal_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_epiglottal_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_glottal_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_alveolar_lateral_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_alveolar_lateral_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_retroflex_lateral_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_retroflex_lateral_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_palatal_lateral_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_palatal_lateral_affricate
  getletter https://en.wikipedia.org/wiki/Voiceless_velar_lateral_affricate
  getletter https://en.wikipedia.org/wiki/Voiced_velar_lateral_affricate
  getletter https://en.wikipedia.org/wiki/Dental_ejective_affricate
  getletter https://en.wikipedia.org/wiki/Alveolar_ejective_affricate
  getletter https://en.wikipedia.org/wiki/Palato-alveolar_ejective_affricate
  getletter https://en.wikipedia.org/wiki/Retroflex_ejective_affricate
  getletter https://en.wikipedia.org/wiki/Velar_ejective_affricate
  getletter https://en.wikipedia.org/wiki/Uvular_ejective_affricate
  getletter https://en.wikipedia.org/wiki/Alveolar_lateral_ejective_affricate
  getletter https://en.wikipedia.org/wiki/Palatal_lateral_ejective_affricate
  getletter https://en.wikipedia.org/wiki/Velar_lateral_ejective_affricate

  getletter https://en.wikipedia.org/wiki/Voiced_labial%E2%80%93alveolar_nasal
  getletter https://en.wikipedia.org/wiki/Voiced_labial%E2%80%93velar_nasal
  getletter https://en.wikipedia.org/wiki/Voiceless_labial%E2%80%93alveolar_plosive
  getletter https://en.wikipedia.org/wiki/Voiced_labial%E2%80%93alveolar_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_labial%E2%80%93velar_plosive
  getletter https://en.wikipedia.org/wiki/Voiced_labial%E2%80%93velar_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_uvular%E2%80%93epiglottal_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_labial%E2%80%93uvular_plosive
  getletter https://en.wikipedia.org/wiki/Voiceless_labial%E2%80%93palatal_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_labial%E2%80%93palatal_approximant
  getletter https://en.wikipedia.org/wiki/Voiceless_labial%E2%80%93velar_fricative
  getletter https://en.wikipedia.org/wiki/Voiced_labial%E2%80%93velar_approximant
  getletter https://en.wikipedia.org/wiki/Sj-sound
  getletter https://en.wikipedia.org/wiki/Velarized_alveolar_lateral_approximant
  getletter https://en.wikipedia.org/wiki/Voiceless_labial%E2%80%93velar_implosive
  getletter https://en.wikipedia.org/wiki/Voiced_labial%E2%80%93velar_implosive
  getletter https://en.wikipedia.org/wiki/Labial%E2%80%93alveolar_ejective_stop

  getletter https://en.wikipedia.org/wiki/Close_front_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Close_front_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Close_central_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Close_central_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Close_back_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Close_back_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Near-close_near-front_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Near-close_near-front_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Near-close_near-back_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Close-mid_front_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Close-mid_front_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Close-mid_central_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Close-mid_central_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Close-mid_back_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Close-mid_back_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Mid_front_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Mid_front_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Mid_central_vowel
  getletter https://en.wikipedia.org/wiki/Mid_back_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Mid_back_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Open-mid_front_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Open-mid_front_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Open-mid_central_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Open-mid_central_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Open-mid_back_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Open-mid_back_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Near-open_front_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Near-open_central_vowel
  getletter https://en.wikipedia.org/wiki/Open_front_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Open_front_rounded_vowel
  getletter https://en.wikipedia.org/wiki/Open_central_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Open_back_unrounded_vowel
  getletter https://en.wikipedia.org/wiki/Open_back_rounded_vowel
}
cat << EOF > main.json
  {
    "version": "1.0",
    "letters": {
EOF
  wikipediaWebCrawling >> main.json
sed -i.bak '${s/,$//}' main.json
cat << EOF >> main.json
    }
  }
EOF
