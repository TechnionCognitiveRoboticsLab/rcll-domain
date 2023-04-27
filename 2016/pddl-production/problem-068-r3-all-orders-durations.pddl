(define (problem rcll-production-068-durative)
	(:domain rcll-production-durative)
    
  (:objects
    R-1 - robot
    R-2 - robot
    R-3 - robot
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
   (robot-waiting R-2)
   (robot-waiting R-3)

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
   (order-gate o1 GATE-1)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 362 (order-delivery-window-open o2))
   (at 465 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_BLACK)
   (at 443 (order-delivery-window-open o3))
   (at 594 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-1)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 775 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_RED)
   (at 587 (order-delivery-window-open o5))
   (at 735 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_ORANGE)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-3)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 617 (order-delivery-window-open o6))
   (at 776 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_ORANGE)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-3)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 601 (order-delivery-window-open o7))
   (at 745 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_YELLOW)
   (order-ring2-color o7 RING_BLUE)
   (order-ring3-color o7 RING_ORANGE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-3)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_RED)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.923899)
   (= (path-length C-BS INPUT C-CS1 INPUT) 6.354766)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 5.965200)
   (= (path-length C-BS INPUT C-CS2 INPUT) 3.326816)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 0.970854)
   (= (path-length C-BS INPUT C-DS INPUT) 7.035392)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.724342)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.923899)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 7.401611)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 7.012045)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 4.373661)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 3.545380)
   (= (path-length C-BS OUTPUT C-DS INPUT) 8.082235)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.781715)
   (= (path-length C-CS1 INPUT C-BS INPUT) 6.354767)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 7.401611)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 3.014974)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 5.559317)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 6.976248)
   (= (path-length C-CS1 INPUT C-DS INPUT) 5.498193)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 7.434335)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 5.965201)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 7.012045)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 3.014974)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 4.636048)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 6.586682)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 3.624684)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 5.560826)
   (= (path-length C-CS2 INPUT C-BS INPUT) 3.326816)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 4.373660)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 5.559317)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 4.636048)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.948297)
   (= (path-length C-CS2 INPUT C-DS INPUT) 4.645957)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 5.026339)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 0.970854)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 3.545379)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 6.976247)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 6.586681)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.948297)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 7.656872)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.455404)
   (= (path-length C-DS INPUT C-BS INPUT) 7.035392)
   (= (path-length C-DS INPUT C-BS OUTPUT) 8.082236)
   (= (path-length C-DS INPUT C-CS1 INPUT) 5.498193)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 3.624684)
   (= (path-length C-DS INPUT C-CS2 INPUT) 4.645957)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 7.656873)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.147530)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.724342)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.781715)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 7.434334)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 5.560825)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 5.026339)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.455404)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.147529)
   (= (path-length START INPUT C-BS INPUT) 1.356288)
   (= (path-length START INPUT C-BS OUTPUT) 2.403132)
   (= (path-length START INPUT C-CS1 INPUT) 5.744009)
   (= (path-length START INPUT C-CS1 OUTPUT) 5.354443)
   (= (path-length START INPUT C-CS2 INPUT) 2.716058)
   (= (path-length START INPUT C-CS2 OUTPUT) 1.977769)
   (= (path-length START INPUT C-DS INPUT) 6.424634)
   (= (path-length START INPUT C-DS OUTPUT) 6.805016))

  (:goal (and

    (order-fulfilled o1)  ; Announce 0
    (order-fulfilled o2)  ; Announce 188
    (order-fulfilled o3)  ; Announce 268
    (order-fulfilled o4)  ; Announce 558
    (order-fulfilled o5)  ; Announce 184
    (order-fulfilled o6)  ; Announce 0
    (order-fulfilled o7)  ; Announce 0
    (order-fulfilled o8)  ; Announce 900
  ))
)
