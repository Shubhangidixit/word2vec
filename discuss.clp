

; Name/Unique Id of WSD rule maker to be added here.
; We then discuss motion of an object in a plane.  
; इसके बाद हम किसी समतल में वस्तु की गति पर परिचर्चा करेङ्गे .
; These are called unit vectors that we discuss now.  
; ऐसे सदिशों को एकाङ्क सदिश कहते हैं जिस पर अब हम परिचर्चा करेङ्गे .
(defrule discuss0
(declare (salience 0))
(id-root ?id discuss)
?mng <-(meaning_to_be_decided ?id)
(Followed_By ? ?id)
(id-cat_coarse ?id not_defined)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  paricarcA_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  discuss.clp   discuss0   "  ?id "   paricarcA_kara )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; We then discuss motion of an object in a plane.  
; इसके बाद हम किसी समतल में वस्तु की गति पर परिचर्चा करेङ्गे .
; These are called unit vectors that we discuss now.  
; ऐसे सदिशों को एकाङ्क सदिश कहते हैं जिस पर अब हम परिचर्चा करेङ्गे .
(defrule discuss1
(declare (salience 0))
(id-root ?id discuss)
?mng <-(meaning_to_be_decided ?id)
(Followed_By ? ?id)
(id-cat_coarse ?id not_defined)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  paricarcA_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  discuss.clp   discuss1   "  ?id "   paricarcA_kara )" crlf))
)

; Name/Unique Id of WSD rule maker to be added here.
; We shall discuss uniform circular motion in some detail.  
; हम एकसमान वृत्तीय गति की कुछ विस्तार से चर्चा करेङ्गे .
(defrule discuss2
(declare (salience 0))
(id-root ?id discuss)
?mng <-(meaning_to_be_decided ?id)
(Followed_By ? ?id)
(id-cat_coarse ?id not_defined)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  carcA_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  discuss.clp   discuss2   "  ?id "   carcA_kara )" crlf))
)