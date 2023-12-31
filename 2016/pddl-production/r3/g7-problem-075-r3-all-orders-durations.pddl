(define (problem rcll-production-075-durative)
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
   (order-base-color o1 BASE_SILVER)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_BLACK)
   (order-gate o1 GATE-1)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_BLACK)
   (at 282 (order-delivery-window-open o2))
   (at 360 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-1)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_BLACK)
   (at 600 (order-delivery-window-open o3))
   (at 727 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 713 (order-delivery-window-open o4))
   (at 871 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 529 (order-delivery-window-open o5))
   (at 623 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_ORANGE)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-1)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_RED)
   (at 673 (order-delivery-window-open o6))
   (at 830 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_YELLOW)
   (order-ring2-color o6 RING_ORANGE)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-3)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_BLACK)
   (at 661 (order-delivery-window-open o7))
   (at 802 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_ORANGE)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_BLUE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-1)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.529772)
   (= (path-length C-BS INPUT C-CS1 INPUT) 6.299128)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 5.931340)
   (= (path-length C-BS INPUT C-CS2 INPUT) 10.147477)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 11.421377)
   (= (path-length C-BS INPUT C-DS INPUT) 7.157714)
   (= (path-length C-BS INPUT C-DS OUTPUT) 8.825601)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.529772)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 5.368269)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 4.607272)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 8.563784)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 9.837684)
   (= (path-length C-BS OUTPUT C-DS INPUT) 5.443352)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.501533)
   (= (path-length C-CS1 INPUT C-BS INPUT) 6.299128)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 5.368269)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 3.272682)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 7.587963)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 10.289121)
   (= (path-length C-CS1 INPUT C-DS INPUT) 3.552586)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 3.190562)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 5.931340)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 4.607271)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 3.272681)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 7.480125)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 8.754025)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 1.748433)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 3.157818)
   (= (path-length C-CS2 INPUT C-BS INPUT) 10.147478)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 8.563785)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 7.587963)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 7.480125)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 2.884984)
   (= (path-length C-CS2 INPUT C-DS INPUT) 6.728708)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 4.451329)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 11.421377)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 9.837684)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 10.289121)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 8.754025)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 2.884985)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 8.002607)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 7.152486)
   (= (path-length C-DS INPUT C-BS INPUT) 7.157714)
   (= (path-length C-DS INPUT C-BS OUTPUT) 5.443351)
   (= (path-length C-DS INPUT C-CS1 INPUT) 3.552586)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 1.748433)
   (= (path-length C-DS INPUT C-CS2 INPUT) 6.728707)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 8.002607)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.357723)
   (= (path-length C-DS OUTPUT C-BS INPUT) 8.825602)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.501533)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 3.190561)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 3.157818)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 4.451329)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 7.152487)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.357723)
   (= (path-length START INPUT C-BS INPUT) 2.339713)
   (= (path-length START INPUT C-BS OUTPUT) 0.971192)
   (= (path-length START INPUT C-CS1 INPUT) 5.793499)
   (= (path-length START INPUT C-CS1 OUTPUT) 5.032502)
   (= (path-length START INPUT C-CS2 INPUT) 7.864400)
   (= (path-length START INPUT C-CS2 OUTPUT) 9.138299)
   (= (path-length START INPUT C-DS INPUT) 5.868582)
   (= (path-length START INPUT C-DS OUTPUT) 7.672983))

(:goal (and    (order-fulfilled o7)  ; Announce 0
)))