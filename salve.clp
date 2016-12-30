

; Name/Unique Id of WSD rule maker to be added here.
; He tried to salve their wounds. 
; उसने उनके घावों की दवा करने का प्रयास किया .
(defrule salve0
(declare (salience 0))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  xavA_kara )
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  salve.clp   salve0   "  ?id "   xavA_kara )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; Oils are a great salve for dry skin.
; तेल सूखी त्वचा के लिए एक बडी औषधि होते हैं.
(defrule salve1
(declare (salience 0))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-kriyArWa_kriyA ? ?id)
(not(kriyA-object ? ?id)
(not(viSeRya-as_saMbanXI ? ?id)
(not(viSeRya-of_saMbanXI ? ?id)
(viSeRya-viSeRaNa ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  ORaXi )
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  salve.clp   salve1   "  ?id "   ORaXi )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
(defrule salve2
(declare (salience 0))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-kriyArWa_kriyA ? ?id)
(not(kriyA-object ? ?id)
(kriyA-subject ? ?id)
(not(viSeRya-as_saMbanXI ? ?id)
(not(viSeRya-of_saMbanXI ? ?id)
(not(viSeRya-viSeRaNa ? ?id)
(POS ? ?id)
(id-cat_coarse ?id )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  "ilAja/upacAra" )
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  salve.clp   salve2   "  ?id "   "ilAja/upacAra" )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
(defrule salve3
(declare (salience 0))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-kriyArWa_kriyA ? ?id)
(not(kriyA-object ? ?id)
(kriyA-subject ? ?id)
(not(viSeRya-as_saMbanXI ? ?id)
(not(viSeRya-of_saMbanXI ? ?id)
(not(viSeRya-viSeRaNa ? ?id)
(POS ? ?id)
(id-cat_coarse ?id )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  "ilAja/upacAra" )
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  salve.clp   salve3   "  ?id "   "ilAja/upacAra" )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; That help was a salve for her guilty conscience.
; वह सहायता उसकी दोषी अन्तरात्मा के लिए अपराध बोध से मुक्ति थी . 
(defrule salve4
(declare (salience 0))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-kriyArWa_kriyA ? ?id)
(not(kriyA-object ? ?id)
(not(kriyA-subject ? ?id)
(not(viSeRya-as_saMbanXI ? ?id)
(not(viSeRya-of_saMbanXI ? ?id)
(not(viSeRya-viSeRaNa ? ?id)
(POS ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  aparAXa_boXa_se_mukwi )
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  salve.clp   salve4   "  ?id "   aparAXa_boXa_se_mukwi )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; A medic smoothed a wet salve on the sunburned face, neck, and hands.
; डाक्टर ने धूप-ताम्र चेहरे पर, गरदन, और हाथों पर एक गीला लेप लगाया . 
(defrule salve5
(declare (salience 0))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-kriyArWa_kriyA ? ?id)
(kriyA-object ? ?id)
(Followed_By ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  lepa )
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  salve.clp   salve5   "  ?id "   lepa )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; This trend typically provides some emotional salve to the poor and the middle class.
; विचारधारा/प्रचलन आम तौर पर गरीब और मध्यम वर्ग को कुछ भावनात्मक आराम देता है .
(defrule salve6
(declare (salience 0))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-kriyArWa_kriyA ? ?id)
(kriyA-object ? ?id)
(Followed_By ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  ArAma )
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  salve.clp   salve6   "  ?id "   ArAma )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; Mentally, the soothing salve of massage eases tension .
; मानसिक रूप से,मालिश का आरामदेह/शांतिदायक  उपचार  तनाव को कम कर देता है . 
(defrule salve7
(declare (salience 0))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-kriyArWa_kriyA ? ?id)
(not(kriyA-object ? ?id)
(not(viSeRya-as_saMbanXI ? ?id)
(viSeRya-of_saMbanXI ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  upacAra )
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  salve.clp   salve7   "  ?id "   upacAra )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; We use Betadine ( an antiseptic cream ) as a salve on wounds.
; हम बीटाडाईन(एक रोगाणु रोधक क्रीम) का घावों पर मरहम की तरह उपयोग करते हैं.
(defrule salve8
(declare (salience 0))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-kriyArWa_kriyA ? ?id)
(not(kriyA-object ? ?id)
(viSeRya-as_saMbanXI ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  marahama )
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  salve.clp   salve8   "  ?id "   marahama )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; The gift was his way of salving his conscience.
; वह तोहफा उसका अपनी अन्तरात्मा को शांत करने का प्रयास था. 
(defrule salve9
(declare (salience 0))
(id-root ?id salve)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-kriyArWa_kriyA ? ?id)
(not(kriyA-object ? ?id)
(not(viSeRya-as_saMbanXI ? ?id)
(not(viSeRya-of_saMbanXI ? ?id)
(not(viSeRya-viSeRaNa ? ?id)
(POS ? ?id)
(id-cat_coarse ?id not_defined)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  SAnwa_kara )
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  salve.clp   salve9   "  ?id "   SAnwa_kara )" crlf))
)