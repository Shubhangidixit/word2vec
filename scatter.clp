

; Name/Unique Id of WSD rule maker to be added here.
; Scatter the grass seed over the lawn.
; लॉन पर घास के बीज फैला दीजिए .
(defrule scatter0
(declare (salience 0))
(id-root ?id scatter)
?mng <-(meaning_to_be_decided ?id)
;(AjFArWaka_kriyA ?id)
(not(conjunction-components ? ?id ?id1))
(id-root ?id1 lawn|lawns|garden|flower_beds|grass|mow|shrubbery|ground)
(kriyA-over_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  PElA_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  scatter.clp   scatter0   "  ?id "   PElA_xe )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; If you like, scatter flowers on top.
; यदि आपको पसन्द हो, तो  ऊपरी सतह पर फूल बिखरा दीजिए .
(defrule scatter1
(declare (salience 0))
(id-root ?id scatter)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 top|topmost|highest|bottom)
;(kriyA-on_saMbanXI ?id ?id1)  
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  biKarA_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  scatter.clp   scatter1   "  ?id "   biKarA_xe )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; Scatter parsley on top.
; सबसे ऊपर अजमोद छिडक दीजिए .
; Scatter the powder around the plants.
; पौधों के चारों ओर चूरा छिडक दीजिए .
(defrule scatter2
(declare (salience 0))
(id-root ?id scatter)
?mng <-(meaning_to_be_decided ?id)
;(AjFArWaka_kriyA ?id)
(not(conjunction-components ? ?id ?id1))
(not(kriyA-over_saMbanXI ?id ?))
(not(kriyA-with_saMbanXI ?id ?))
(kriyA-around_saMbanXI ?id ?id1) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  Cidaka_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  scatter.clp   scatter2   "  ?id "   Cidaka_xe )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; Scatter butter on top and put the bowl in the freezer for 15 minutes.
; सबसे ऊपर  मक्खन लगा दीजिए और 15 मिनटों के लिए कटोरे को फ्रीजर में  रखिए .
(defrule scatter3
(declare (salience 0))
(id-root ?id scatter)
?mng <-(meaning_to_be_decided ?id)
;(AjFArWaka_kriyA ?id)
(id-root ?id1 puts|put|placed|pull|bring|brought|placed)
(conjunction-components ? ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  lagA_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  scatter.clp   scatter3   "  ?id "   lagA_xe )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; Scatter the lawn with grass seed.
; लॉन को घास के बीजों से आच्छादित कर दीजिए .
(defrule scatter4
(declare (salience 0))
(id-root ?id scatter)
?mng <-(meaning_to_be_decided ?id)
;(AjFArWaka_kriyA ?id)
(not(conjunction-components ? ?id ?id1))
(not(kriyA-over_saMbanXI ?id ?))
(kriyA-with_saMbanXI ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  AcCAxiwa_kara_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  scatter.clp   scatter4   "  ?id "   AcCAxiwa_kara_xe )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; Security forces shot into the crowd, forcing them to scatter.
; सुरक्षा बलों ने भीड़ को बलपूर्वक तितर बितर करने के लिए गोली चलाई.
(defrule scatter5
(declare (salience 0))
(id-root ?id scatter)
?mng <-(meaning_to_be_decided ?id)
(not(AjFArWaka_kriyA ?id))
(not(kriyA-object ? ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  wiwara_biwara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  scatter.clp   scatter5   "  ?id "   wiwara_biwara )" crlf))
)
