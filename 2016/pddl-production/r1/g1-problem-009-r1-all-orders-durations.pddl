(define (problem rcll-production-009-durative)
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
   (order-base-color o1 BASE_RED)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_GREY)
   (order-gate o1 GATE-2)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_SILVER)
   (at 282 (order-delivery-window-open o2))
   (at 430 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_RED)
   (at 688 (order-delivery-window-open o3))
   (at 840 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-1)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 717 (order-delivery-window-open o4))
   (at 877 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 566 (order-delivery-window-open o5))
   (at 669 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_ORANGE)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-3)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 634 (order-delivery-window-open o6))
   (at 806 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_BLUE)
   (order-ring2-color o6 RING_GREEN)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-2)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_BLACK)
   (at 659 (order-delivery-window-open o7))
   (at 831 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_YELLOW)
   (order-ring2-color o7 RING_ORANGE)
   (order-ring3-color o7 RING_BLUE)
   (order-cap-color o7 CAP_GREY)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-1)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.261961)
   (= (path-length C-BS INPUT C-CS1 INPUT) 12.144603)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 9.814680)
   (= (path-length C-BS INPUT C-CS2 INPUT) 5.548506)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 5.654427)
   (= (path-length C-BS INPUT C-DS INPUT) 7.219842)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.523587)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.261961)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 10.343972)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 8.014050)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 3.747875)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 3.853795)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.808733)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 4.722956)
   (= (path-length C-CS1 INPUT C-BS INPUT) 12.144604)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 10.343973)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 4.810575)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 7.703938)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 8.692537)
   (= (path-length C-CS1 INPUT C-DS INPUT) 5.713194)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 6.700121)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 9.814680)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 8.014050)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 4.810575)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 5.662258)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 6.737601)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 5.623567)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 4.370198)
   (= (path-length C-CS2 INPUT C-BS INPUT) 5.548506)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 3.747875)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 7.703938)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 5.662258)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 1.838794)
   (= (path-length C-CS2 INPUT C-DS INPUT) 5.729022)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 4.475653)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 5.654426)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 3.853795)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 8.692537)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 6.737601)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 1.838794)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 6.903430)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 5.488771)
   (= (path-length C-DS INPUT C-BS INPUT) 7.219841)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.808733)
   (= (path-length C-DS INPUT C-CS1 INPUT) 5.713194)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 5.623567)
   (= (path-length C-DS INPUT C-CS2 INPUT) 5.729022)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 6.903430)
   (= (path-length C-DS INPUT C-DS OUTPUT) 4.314609)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.523586)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 4.722956)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 6.700121)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 4.370198)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 4.475653)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 5.488770)
   (= (path-length C-DS OUTPUT C-DS INPUT) 4.314609)
   (= (path-length START INPUT C-BS INPUT) 2.416801)
   (= (path-length START INPUT C-BS OUTPUT) 0.616170)
   (= (path-length START INPUT C-CS1 INPUT) 10.498812)
   (= (path-length START INPUT C-CS1 OUTPUT) 8.168889)
   (= (path-length START INPUT C-CS2 INPUT) 3.902714)
   (= (path-length START INPUT C-CS2 OUTPUT) 4.008635)
   (= (path-length START INPUT C-DS INPUT) 6.963572)
   (= (path-length START INPUT C-DS OUTPUT) 4.877795))

(:goal (and    (order-fulfilled o1)  ; Announce 0
)))