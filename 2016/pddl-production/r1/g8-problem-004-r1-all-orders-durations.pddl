(define (problem rcll-production-004-durative)
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
   (order-gate o1 GATE-2)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 226 (order-delivery-window-open o2))
   (at 322 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-2)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_RED)
   (at 396 (order-delivery-window-open o3))
   (at 541 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-1)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 796 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-3)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 592 (order-delivery-window-open o5))
   (at 700 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_YELLOW)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-2)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_RED)
   (at 617 (order-delivery-window-open o6))
   (at 738 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_YELLOW)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-2)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_RED)
   (at 610 (order-delivery-window-open o7))
   (at 768 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_ORANGE)
   (order-ring3-color o7 RING_YELLOW)
   (order-cap-color o7 CAP_GREY)
   (order-gate o7 GATE-3)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-1)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.822973)
   (= (path-length C-BS INPUT C-CS1 INPUT) 8.295475)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 10.770344)
   (= (path-length C-BS INPUT C-CS2 INPUT) 1.734444)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 1.268341)
   (= (path-length C-BS INPUT C-DS INPUT) 5.517728)
   (= (path-length C-BS INPUT C-DS OUTPUT) 7.312204)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.822973)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 8.890772)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 11.365641)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 2.540051)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 3.483070)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.113025)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.907501)
   (= (path-length C-CS1 INPUT C-BS INPUT) 8.295475)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 8.890773)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 4.776667)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 9.580664)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 7.806361)
   (= (path-length C-CS1 INPUT C-DS INPUT) 5.771901)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 4.358943)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 10.770344)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 11.365643)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 4.776668)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 11.814313)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 10.281230)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 8.209521)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 5.184847)
   (= (path-length C-CS2 INPUT C-BS INPUT) 1.734444)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 2.540051)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 9.580664)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 11.814314)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 2.553529)
   (= (path-length C-CS2 INPUT C-DS INPUT) 5.454416)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 7.655762)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 1.268341)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 3.483070)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 7.806362)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 10.281231)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 2.553529)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 5.028614)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.823090)
   (= (path-length C-DS INPUT C-BS INPUT) 5.517728)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.113025)
   (= (path-length C-DS INPUT C-CS1 INPUT) 5.771902)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 8.209520)
   (= (path-length C-DS INPUT C-CS2 INPUT) 5.454415)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 5.028614)
   (= (path-length C-DS INPUT C-DS OUTPUT) 4.050969)
   (= (path-length C-DS OUTPUT C-BS INPUT) 7.312204)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.907501)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 4.358943)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 5.184846)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 7.655762)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.823090)
   (= (path-length C-DS OUTPUT C-DS INPUT) 4.050969)
   (= (path-length START INPUT C-BS INPUT) 2.728653)
   (= (path-length START INPUT C-BS OUTPUT) 2.130516)
   (= (path-length START INPUT C-CS1 INPUT) 7.647241)
   (= (path-length START INPUT C-CS1 OUTPUT) 10.122109)
   (= (path-length START INPUT C-CS2 INPUT) 4.013842)
   (= (path-length START INPUT C-CS2 OUTPUT) 2.239539)
   (= (path-length START INPUT C-DS INPUT) 4.869494)
   (= (path-length START INPUT C-DS OUTPUT) 6.663970))

(:goal (and    (order-fulfilled o8)  ; Announce 900
)))