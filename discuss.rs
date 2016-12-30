/*----------------------------------------------------------------------
  domains
----------------------------------------------------------------------*/
dom(Followed_By) = { motion, uniform, now };
dom(Meaning) = { paricarcA_kara, aXyayana_kara, carcA_kara };

/*----------------------------------------------------------------------
  rules
----------------------------------------------------------------------*/
Meaning = paricarcA_kara <- Followed_By = motion [2/50.0%];
Meaning = paricarcA_kara <- Followed_By = now [1/100.0%];
Meaning = carcA_kara <- Followed_By = uniform [1/100.0%];

/*----------------------------------------------------------------------
  number of attributes: 2
  number of rules     : 3
----------------------------------------------------------------------*/
