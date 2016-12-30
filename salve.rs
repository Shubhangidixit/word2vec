/*----------------------------------------------------------------------
  domains
----------------------------------------------------------------------*/
dom(kriyA-kriyArWa_kriyA) = { yes, no };
dom(kriyA-object) = { yes, no };
dom(kriyA-subject) = { human, no, yes, humanhuman };
dom(viSeRya-as_saMbanXI) = { no, yes };
dom(viSeRya-of_saMbanXI) = { no, yes };
dom(viSeRya-viSeRaNa) = { no, yes };
dom(Followed_By) = { their, for, on, to, of, none };
dom(POS) = { verb, noun, not_defined };
dom(Meaning) = { xavA_kara, ORaXi, "ilAja/upacAra", aparAXa_boXa_se_mukwi, lepa, ArAma, upacAra, marahama, SAnwa_kara };

/*----------------------------------------------------------------------
  rules
----------------------------------------------------------------------*/
Meaning = xavA_kara <- kriyA-kriyArWa_kriyA = yes [1/100.0%];
Meaning = ORaXi <- kriyA-kriyArWa_kriyA = no & kriyA-object = no & viSeRya-as_saMbanXI = no & viSeRya-of_saMbanXI = no & viSeRya-viSeRaNa = yes [1/100.0%];
Meaning = "ilAja/upacAra" <- kriyA-kriyArWa_kriyA = no & kriyA-object = no & kriyA-subject = yes & viSeRya-as_saMbanXI = no & viSeRya-of_saMbanXI = no & viSeRya-viSeRaNa = no & POS = noun [1/100.0%];
Meaning = "ilAja/upacAra" <- kriyA-kriyArWa_kriyA = no & kriyA-object = no & kriyA-subject = humanhuman & viSeRya-as_saMbanXI = no & viSeRya-of_saMbanXI = no & viSeRya-viSeRaNa = no & POS = noun [1/100.0%];
Meaning = aparAXa_boXa_se_mukwi <- kriyA-kriyArWa_kriyA = no & kriyA-object = no & kriyA-subject = no & viSeRya-as_saMbanXI = no & viSeRya-of_saMbanXI = no & viSeRya-viSeRaNa = no & POS = noun [1/100.0%];
Meaning = lepa <- kriyA-kriyArWa_kriyA = no & kriyA-object = yes & Followed_By = on [1/100.0%];
Meaning = ArAma <- kriyA-kriyArWa_kriyA = no & kriyA-object = yes & Followed_By = to [1/100.0%];
Meaning = upacAra <- kriyA-kriyArWa_kriyA = no & kriyA-object = no & viSeRya-as_saMbanXI = no & viSeRya-of_saMbanXI = yes [1/100.0%];
Meaning = marahama <- kriyA-kriyArWa_kriyA = no & kriyA-object = no & viSeRya-as_saMbanXI = yes [1/100.0%];
Meaning = SAnwa_kara <- kriyA-kriyArWa_kriyA = no & kriyA-object = no & viSeRya-as_saMbanXI = no & viSeRya-of_saMbanXI = no & viSeRya-viSeRaNa = no & POS = not_defined [1/100.0%];

/*----------------------------------------------------------------------
  number of attributes: 9
  number of rules     : 10
----------------------------------------------------------------------*/
