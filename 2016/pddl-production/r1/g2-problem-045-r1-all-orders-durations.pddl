(define (problem rcll-production-045-durative)
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
   (order-base-color o1 BASE_SILVER)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_BLACK)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_BLACK)
   (at 368 (order-delivery-window-open o2))
   (at 528 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_RED)
   (at 419 (order-delivery-window-open o3))
   (at 484 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-1)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 728 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 605 (order-delivery-window-open o5))
   (at 746 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_ORANGE)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-3)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_BLACK)
   (at 687 (order-delivery-window-open o6))
   (at 827 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_YELLOW)
   (order-ring2-color o6 RING_ORANGE)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-1)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_RED)
   (at 613 (order-delivery-window-open o7))
   (at 776 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_GREEN)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-1)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_RED)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-1)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.379678)
   (= (path-length C-BS INPUT C-CS1 INPUT) 5.324023)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 3.145335)
   (= (path-length C-BS INPUT C-CS2 INPUT) 5.958193)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 7.713174)
   (= (path-length C-BS INPUT C-DS INPUT) 6.991471)
   (= (path-length C-BS INPUT C-DS OUTPUT) 5.106923)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.379678)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 7.186742)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 5.008055)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 7.646359)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 9.401340)
   (= (path-length C-BS OUTPUT C-DS INPUT) 7.539767)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.795088)
   (= (path-length C-CS1 INPUT C-BS INPUT) 5.324023)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 7.186742)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.674113)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 2.977837)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 4.735262)
   (= (path-length C-CS1 INPUT C-DS INPUT) 5.250913)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 4.893766)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 3.145335)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 5.008055)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.674112)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 5.240189)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 6.997613)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 6.891084)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 5.006535)
   (= (path-length C-CS2 INPUT C-BS INPUT) 5.958193)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 7.646358)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 2.977837)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 5.240189)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.431912)
   (= (path-length C-CS2 INPUT C-DS INPUT) 3.947564)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 3.590417)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 7.713173)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 9.401340)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 4.735262)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 6.997613)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.431912)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 3.197146)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 2.839999)
   (= (path-length C-DS INPUT C-BS INPUT) 6.991472)
   (= (path-length C-DS INPUT C-BS OUTPUT) 7.539767)
   (= (path-length C-DS INPUT C-CS1 INPUT) 5.250913)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 6.891084)
   (= (path-length C-DS INPUT C-CS2 INPUT) 3.947564)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 3.197146)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.138829)
   (= (path-length C-DS OUTPUT C-BS INPUT) 5.106923)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.795089)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 4.893766)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 5.006535)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 3.590417)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 2.839999)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.138830)
   (= (path-length START INPUT C-BS INPUT) 1.125739)
   (= (path-length START INPUT C-BS OUTPUT) 3.368991)
   (= (path-length START INPUT C-CS1 INPUT) 4.958118)
   (= (path-length START INPUT C-CS1 OUTPUT) 2.779431)
   (= (path-length START INPUT C-CS2 INPUT) 5.592288)
   (= (path-length START INPUT C-CS2 OUTPUT) 7.347269)
   (= (path-length START INPUT C-DS INPUT) 6.625567)
   (= (path-length START INPUT C-DS OUTPUT) 4.741017))

(:goal (and    (order-fulfilled o2)  ; Announce 143
)))