/*----------------------------------------------------------------------
  domains
----------------------------------------------------------------------*/
dom(AjFArWaka_kriyA) = { yes, no };
dom(conjunction-components) = { no, yes };
dom(kriyA-object) = { inanimate, no, yes };
dom(kriyA-over_saMbanXI) = { inanimate, no };
dom(kriyA-with_saMbanXI) = { no, inanimate };
dom(Meaning) = { PElA_xe, biKarA_xe, Cidaka_xe, lagA_xe, AcCAxiwa_kara_xe, wiwara_biwara };

/*----------------------------------------------------------------------
  rules
----------------------------------------------------------------------*/
Meaning = PElA_xe <- AjFArWaka_kriyA = yes & conjunction-components = no & kriyA-over_saMbanXI = inanimate [1/100.0%];
Meaning = biKarA_xe <- AjFArWaka_kriyA = no & kriyA-object = inanimate [1/100.0%];
Meaning = Cidaka_xe <- AjFArWaka_kriyA = yes & conjunction-components = no & kriyA-over_saMbanXI = no & kriyA-with_saMbanXI = no [2/100.0%];
Meaning = lagA_xe <- AjFArWaka_kriyA = yes & conjunction-components = yes [1/100.0%];
Meaning = AcCAxiwa_kara_xe <- AjFArWaka_kriyA = yes & conjunction-components = no & kriyA-over_saMbanXI = no & kriyA-with_saMbanXI = inanimate [1/100.0%];
Meaning = wiwara_biwara <- AjFArWaka_kriyA = no & kriyA-object = no [1/100.0%];

/*----------------------------------------------------------------------
  number of attributes: 6
  number of rules     : 6
----------------------------------------------------------------------*/
