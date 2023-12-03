(define (problem rcll-production-029-durative)
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
   (order-base-color o1 BASE_BLACK)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_GREY)
   (order-gate o1 GATE-1)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_BLACK)
   (at 279 (order-delivery-window-open o2))
   (at 445 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-2)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_SILVER)
   (at 521 (order-delivery-window-open o3))
   (at 616 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 757 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_SILVER)
   (at 560 (order-delivery-window-open o5))
   (at 685 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_YELLOW)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-2)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 672 (order-delivery-window-open o6))
   (at 818 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_BLUE)
   (order-ring2-color o6 RING_ORANGE)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-2)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_RED)
   (at 632 (order-delivery-window-open o7))
   (at 763 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_ORANGE)
   (order-ring2-color o7 RING_GREEN)
   (order-ring3-color o7 RING_BLUE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_RED)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-1)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.624243)
   (= (path-length C-BS INPUT C-CS1 INPUT) 14.809516)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 13.642974)
   (= (path-length C-BS INPUT C-CS2 INPUT) 7.522819)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 7.123367)
   (= (path-length C-BS INPUT C-DS INPUT) 7.202878)
   (= (path-length C-BS INPUT C-DS OUTPUT) 9.421549)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.624243)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 12.539646)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 11.516778)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 5.134496)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 4.997171)
   (= (path-length C-BS OUTPUT C-DS INPUT) 5.076683)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.295354)
   (= (path-length C-CS1 INPUT C-BS INPUT) 14.809515)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 12.539645)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.899303)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 7.915814)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 7.744626)
   (= (path-length C-CS1 INPUT C-DS INPUT) 8.100345)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 6.698268)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 13.642973)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 11.516779)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.899303)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 6.918693)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 6.578084)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 6.933803)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 5.531727)
   (= (path-length C-CS2 INPUT C-BS INPUT) 7.522819)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 5.134496)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 7.915814)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 6.918693)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.587947)
   (= (path-length C-CS2 INPUT C-DS INPUT) 3.943665)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 3.361164)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 7.123366)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 4.997171)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 7.744626)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 6.578084)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.587947)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 0.414195)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 2.998531)
   (= (path-length C-DS INPUT C-BS INPUT) 7.202878)
   (= (path-length C-DS INPUT C-BS OUTPUT) 5.076683)
   (= (path-length C-DS INPUT C-CS1 INPUT) 8.100345)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 6.933803)
   (= (path-length C-DS INPUT C-CS2 INPUT) 3.943665)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 0.414195)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.354249)
   (= (path-length C-DS OUTPUT C-BS INPUT) 9.421549)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.295354)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 6.698268)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 5.531727)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 3.361164)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 2.998531)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.354249)
   (= (path-length START INPUT C-BS INPUT) 3.246640)
   (= (path-length START INPUT C-BS OUTPUT) 2.074225)
   (= (path-length START INPUT C-CS1 INPUT) 12.522149)
   (= (path-length START INPUT C-CS1 OUTPUT) 11.499281)
   (= (path-length START INPUT C-CS2 INPUT) 5.116998)
   (= (path-length START INPUT C-CS2 OUTPUT) 4.979674)
   (= (path-length START INPUT C-DS INPUT) 5.059186)
   (= (path-length START INPUT C-DS OUTPUT) 7.277856))

(:goal (and    (order-fulfilled o6)  ; Announce 0
)))