(define (problem rcll-production-010-durative)
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
   (order-cap-color o1 CAP_BLACK)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_BLACK)
   (at 293 (order-delivery-window-open o2))
   (at 391 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_RED)
   (at 386 (order-delivery-window-open o3))
   (at 514 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 741 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_SILVER)
   (at 685 (order-delivery-window-open o5))
   (at 776 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_YELLOW)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-1)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 624 (order-delivery-window-open o6))
   (at 759 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_ORANGE)
   (order-ring2-color o6 RING_GREEN)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-2)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_RED)
   (at 638 (order-delivery-window-open o7))
   (at 808 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_YELLOW)
   (order-ring2-color o7 RING_BLUE)
   (order-ring3-color o7 RING_GREEN)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_RED)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-2)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.727163)
   (= (path-length C-BS INPUT C-CS1 INPUT) 5.589567)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 5.756692)
   (= (path-length C-BS INPUT C-CS2 INPUT) 6.314143)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 7.379179)
   (= (path-length C-BS INPUT C-DS INPUT) 5.438423)
   (= (path-length C-BS INPUT C-DS OUTPUT) 7.994650)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.727162)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 5.840845)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 6.878027)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 6.565422)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 7.630458)
   (= (path-length C-BS OUTPUT C-DS INPUT) 5.689702)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 8.245930)
   (= (path-length C-CS1 INPUT C-BS INPUT) 5.589567)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 5.840845)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 3.275221)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 5.880590)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 7.918691)
   (= (path-length C-CS1 INPUT C-DS INPUT) 0.735947)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 2.844392)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 5.756692)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 6.878028)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 3.275221)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 8.078626)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 9.775425)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 3.571860)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 4.621576)
   (= (path-length C-CS2 INPUT C-BS INPUT) 6.314143)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 6.565421)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 5.880590)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 8.078625)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 2.584720)
   (= (path-length C-CS2 INPUT C-DS INPUT) 5.729447)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 4.565789)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 7.379179)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 7.630457)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 7.918691)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 9.775423)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 2.584720)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 7.767547)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.603889)
   (= (path-length C-DS INPUT C-BS INPUT) 5.438423)
   (= (path-length C-DS INPUT C-BS OUTPUT) 5.689701)
   (= (path-length C-DS INPUT C-CS1 INPUT) 0.735947)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 3.571859)
   (= (path-length C-DS INPUT C-CS2 INPUT) 5.729446)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 7.767547)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.141031)
   (= (path-length C-DS OUTPUT C-BS INPUT) 7.994651)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 8.245930)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 2.844392)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 4.621576)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 4.565789)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.603889)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.141031)
   (= (path-length START INPUT C-BS INPUT) 2.827662)
   (= (path-length START INPUT C-BS OUTPUT) 2.038022)
   (= (path-length START INPUT C-CS1 INPUT) 4.704927)
   (= (path-length START INPUT C-CS1 OUTPUT) 6.065591)
   (= (path-length START INPUT C-CS2 INPUT) 5.429503)
   (= (path-length START INPUT C-CS2 OUTPUT) 6.494540)
   (= (path-length START INPUT C-DS INPUT) 4.553784)
   (= (path-length START INPUT C-DS OUTPUT) 7.110011))

(:goal (and    (order-fulfilled o6)  ; Announce 0
)))