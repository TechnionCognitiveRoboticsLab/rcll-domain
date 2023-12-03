(define (problem rcll-production-020-durative)
	(:domain rcll-production-durative)
    
  (:objects
    R-1 - robot
    o1 - order
    o2 - order
    o3 - order
    o4 - order
    o5 - order
    o6 - order
    o7 - order
    o8 - order
    wp1 - workpiece
    cg1 cg2 cg3 cb1 cb2 cb3 - cap-carrier
    C-BS C-CS1 C-CS2 C-DS - mps
    CYAN - team-color
  )
   
  (:init
   (mps-type C-BS BS)
   (mps-type C-CS1 CS)
   (mps-type C-CS2 CS) 
   (mps-type C-DS DS)
   (location-free START INPUT)
   (location-free C-BS INPUT)
   (location-free C-BS OUTPUT)
   (location-free C-CS1 INPUT)
   (location-free C-CS1 OUTPUT)
   (location-free C-CS2 INPUT)
   (location-free C-CS2 OUTPUT)
   (location-free C-DS INPUT)
   (location-free C-DS OUTPUT)
   (cs-can-perform C-CS1 CS_RETRIEVE)
   (cs-can-perform C-CS2 CS_RETRIEVE)
   (cs-free C-CS1)
   (cs-free C-CS2)

   (wp-base-color wp1 BASE_NONE)
   (wp-cap-color wp1 CAP_NONE)
   (wp-ring1-color wp1 RING_NONE)
   (wp-ring2-color wp1 RING_NONE)
   (wp-ring3-color wp1 RING_NONE)
   (wp-unused wp1)
   (robot-waiting R-1)

   (mps-state C-BS IDLE)
   (mps-state C-CS1 IDLE)
   (mps-state C-CS2 IDLE)
   (mps-state C-DS IDLE)

   (wp-cap-color cg1 CAP_GREY)
   (wp-cap-color cg2 CAP_GREY)
   (wp-cap-color cg3 CAP_GREY)
   (wp-on-shelf cg1 C-CS1 LEFT)
   (wp-on-shelf cg2 C-CS1 MIDDLE)
   (wp-on-shelf cg3 C-CS1 RIGHT)

   (wp-cap-color cb1 CAP_BLACK)
   (wp-cap-color cb2 CAP_BLACK)
   (wp-cap-color cb3 CAP_BLACK)
   (wp-on-shelf cb1 C-CS2 LEFT)
   (wp-on-shelf cb2 C-CS2 MIDDLE)
   (wp-on-shelf cb3 C-CS2 RIGHT)
   (order-complexity o1 c0)
   (order-base-color o1 BASE_BLACK)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_GREY)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 328 (order-delivery-window-open o2))
   (at 469 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-1)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_BLACK)
   (at 531 (order-delivery-window-open o3))
   (at 613 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 760 (order-delivery-window-open o4))
   (at 874 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_SILVER)
   (at 575 (order-delivery-window-open o5))
   (at 693 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_GREEN)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-1)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 708 (order-delivery-window-open o6))
   (at 855 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_YELLOW)
   (order-ring2-color o6 RING_GREEN)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-1)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 717 (order-delivery-window-open o7))
   (at 892 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_GREEN)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_ORANGE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_RED)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-1)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.763203)
   (= (path-length C-BS INPUT C-CS1 INPUT) 4.195336)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 5.210125)
   (= (path-length C-BS INPUT C-CS2 INPUT) 7.491258)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 8.098250)
   (= (path-length C-BS INPUT C-DS INPUT) 6.710319)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.805080)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.763202)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 5.325693)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 5.145279)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 7.426412)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 8.033404)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.645473)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.740234)
   (= (path-length C-CS1 INPUT C-BS INPUT) 4.195336)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 5.325693)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 4.056358)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 4.715991)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 5.322984)
   (= (path-length C-CS1 INPUT C-DS INPUT) 5.502846)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 6.788382)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 5.210125)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 5.145279)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 4.056358)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 2.287837)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 2.894830)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 3.074692)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 4.389776)
   (= (path-length C-CS2 INPUT C-BS INPUT) 7.491259)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 7.426413)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 4.715992)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 2.287837)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.517091)
   (= (path-length C-CS2 INPUT C-DS INPUT) 3.696953)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 5.012038)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 8.098250)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 8.033404)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 5.322984)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 2.894829)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.517091)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 1.743299)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 3.037310)
   (= (path-length C-DS INPUT C-BS INPUT) 6.710320)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.645473)
   (= (path-length C-DS INPUT C-CS1 INPUT) 5.502847)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 3.074692)
   (= (path-length C-DS INPUT C-CS2 INPUT) 3.696953)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 1.743299)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.238246)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.805080)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.740234)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 6.788382)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 4.389776)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 5.012038)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 3.037310)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.238245)
   (= (path-length START INPUT C-BS INPUT) 1.577976)
   (= (path-length START INPUT C-BS OUTPUT) 3.939873)
   (= (path-length START INPUT C-CS1 INPUT) 3.378716)
   (= (path-length START INPUT C-CS1 OUTPUT) 4.393505)
   (= (path-length START INPUT C-CS2 INPUT) 6.674638)
   (= (path-length START INPUT C-CS2 OUTPUT) 7.281631)
   (= (path-length START INPUT C-DS INPUT) 5.893699)
   (= (path-length START INPUT C-DS OUTPUT) 5.988460))

(:goal (and    (order-fulfilled o3)  ; Announce 387
)))