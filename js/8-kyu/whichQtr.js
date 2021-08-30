quarterOf = month => {
  return month>0?
    month<=3
    ?1
    :month<=6
      ?2
      :month<=9
      ?3
      :4
  : 0
}

// OR quarterOf = m => Math.ceil(m/3)