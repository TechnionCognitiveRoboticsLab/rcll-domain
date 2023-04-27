(define (problem rcll-production-092-durative)
	(:domain rcll-production-durative)
    
  (:objects
    R-1 - robot
    R-2 - robot
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
   (order-base-color o1 BASE_RED)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_BLACK)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 375 (order-delivery-window-open o2))
   (at 468 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-2)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_RED)
   (at 670 (order-delivery-window-open o3))
   (at 750 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-3)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 776 (order-delivery-window-open o4))
   (at 844 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-3)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_SILVER)
   (at 641 (order-delivery-window-open o5))
   (at 756 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_BLUE)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-1)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 608 (order-delivery-window-open o6))
   (at 731 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_BLUE)
   (order-ring2-color o6 RING_GREEN)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-3)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_BLACK)
   (at 639 (order-delivery-window-open o7))
   (at 804 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_GREEN)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_BLUE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_RED)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-1)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.533514)
   (= (path-length C-BS INPUT C-CS1 INPUT) 10.765615)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 10.987449)
   (= (path-length C-BS INPUT C-CS2 INPUT) 5.029432)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 3.820402)
   (= (path-length C-BS INPUT C-DS INPUT) 6.742682)
   (= (path-length C-BS INPUT C-DS OUTPUT) 8.125773)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.533514)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 10.404390)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 10.626224)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 6.948404)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 5.872547)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.381456)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.764549)
   (= (path-length C-CS1 INPUT C-BS INPUT) 10.765617)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 10.404392)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.915218)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 11.197966)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 11.059095)
   (= (path-length C-CS1 INPUT C-DS INPUT) 10.081221)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 7.239334)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 10.987449)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 10.626224)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.915218)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 11.064790)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 10.925920)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 9.948045)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 7.106158)
   (= (path-length C-CS2 INPUT C-BS INPUT) 5.029433)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 6.948403)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 11.197966)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 11.064791)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 2.940234)
   (= (path-length C-CS2 INPUT C-DS INPUT) 3.271183)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 5.623275)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 3.820402)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 5.872547)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 11.059093)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 10.925919)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 2.940234)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 3.801656)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.153747)
   (= (path-length C-DS INPUT C-BS INPUT) 6.742682)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.381455)
   (= (path-length C-DS INPUT C-CS1 INPUT) 10.081221)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 9.948045)
   (= (path-length C-DS INPUT C-CS2 INPUT) 3.271183)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 3.801656)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.353585)
   (= (path-length C-DS OUTPUT C-BS INPUT) 8.125772)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.764546)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 7.239334)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 7.106158)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 5.623274)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.153747)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.353585)
   (= (path-length START INPUT C-BS INPUT) 2.897533)
   (= (path-length START INPUT C-BS OUTPUT) 1.640737)
   (= (path-length START INPUT C-CS1 INPUT) 9.684312)
   (= (path-length START INPUT C-CS1 OUTPUT) 9.906144)
   (= (path-length START INPUT C-CS2 INPUT) 6.228325)
   (= (path-length START INPUT C-CS2 OUTPUT) 6.089453)
   (= (path-length START INPUT C-DS INPUT) 5.661377)
   (= (path-length START INPUT C-DS OUTPUT) 7.044470))

  (:goal (and

    (order-fulfilled o1)  ; Announce 0
    (order-fulfilled o2)  ; Announce 187
    (order-fulfilled o3)  ; Announce 502
    (order-fulfilled o4)  ; Announce 626
    (order-fulfilled o5)  ; Announce 333
    (order-fulfilled o6)  ; Announce 0
    (order-fulfilled o7)  ; Announce 0
    (order-fulfilled o8)  ; Announce 900
  ))
)