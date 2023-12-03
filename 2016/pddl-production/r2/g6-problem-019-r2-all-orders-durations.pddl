(define (problem rcll-production-019-durative)
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
   (order-cap-color o1 CAP_GREY)
   (order-gate o1 GATE-2)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 294 (order-delivery-window-open o2))
   (at 364 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-1)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_BLACK)
   (at 514 (order-delivery-window-open o3))
   (at 676 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_BLACK)
   (at 713 (order-delivery-window-open o4))
   (at 844 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-3)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_SILVER)
   (at 532 (order-delivery-window-open o5))
   (at 682 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_YELLOW)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-3)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 700 (order-delivery-window-open o6))
   (at 826 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_ORANGE)
   (order-ring2-color o6 RING_GREEN)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-3)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_BLACK)
   (at 695 (order-delivery-window-open o7))
   (at 873 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_GREEN)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_BLUE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-1)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-2)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.819598)
   (= (path-length C-BS INPUT C-CS1 INPUT) 7.027211)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 6.456880)
   (= (path-length C-BS INPUT C-CS2 INPUT) 3.611769)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 1.801175)
   (= (path-length C-BS INPUT C-DS INPUT) 7.492666)
   (= (path-length C-BS INPUT C-DS OUTPUT) 5.947657)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.819598)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 6.637173)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 7.402048)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 3.221731)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 2.746343)
   (= (path-length C-BS OUTPUT C-DS INPUT) 8.437834)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.892825)
   (= (path-length C-CS1 INPUT C-BS INPUT) 7.027211)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 6.637172)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 3.581934)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 3.689792)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 6.544034)
   (= (path-length C-CS1 INPUT C-DS INPUT) 5.149252)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 7.970593)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 6.456881)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 7.402048)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 3.581934)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 4.998186)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 5.545110)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 3.213908)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 6.035249)
   (= (path-length C-CS2 INPUT C-BS INPUT) 3.611769)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 3.221731)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 3.689791)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 4.998186)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.128592)
   (= (path-length C-CS2 INPUT C-DS INPUT) 6.210811)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 6.599995)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 1.801175)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 2.746343)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 6.544034)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 5.545110)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.128592)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 6.580896)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 5.035886)
   (= (path-length C-DS INPUT C-BS INPUT) 7.492666)
   (= (path-length C-DS INPUT C-BS OUTPUT) 8.437835)
   (= (path-length C-DS INPUT C-CS1 INPUT) 5.149253)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 3.213909)
   (= (path-length C-DS INPUT C-CS2 INPUT) 6.210811)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 6.580896)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.236684)
   (= (path-length C-DS OUTPUT C-BS INPUT) 5.947658)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.892825)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 7.970594)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 6.035249)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 6.599995)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 5.035887)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.236685)
   (= (path-length START INPUT C-BS INPUT) 2.203345)
   (= (path-length START INPUT C-BS OUTPUT) 1.813307)
   (= (path-length START INPUT C-CS1 INPUT) 4.884086)
   (= (path-length START INPUT C-CS1 OUTPUT) 6.192479)
   (= (path-length START INPUT C-CS2 INPUT) 1.468644)
   (= (path-length START INPUT C-CS2 OUTPUT) 1.720168)
   (= (path-length START INPUT C-DS INPUT) 7.405105)
   (= (path-length START INPUT C-DS OUTPUT) 5.866650))

(:goal (and    (order-fulfilled o6)  ; Announce 196
)))