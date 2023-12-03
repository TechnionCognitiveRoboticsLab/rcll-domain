(define (problem rcll-production-006-durative)
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
   (order-cap-color o1 CAP_GREY)
   (order-gate o1 GATE-1)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 329 (order-delivery-window-open o2))
   (at 455 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_RED)
   (at 471 (order-delivery-window-open o3))
   (at 585 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-1)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 744 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 550 (order-delivery-window-open o5))
   (at 658 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_ORANGE)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-1)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_RED)
   (at 678 (order-delivery-window-open o6))
   (at 799 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_YELLOW)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-3)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 677 (order-delivery-window-open o7))
   (at 800 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_GREEN)
   (order-ring3-color o7 RING_ORANGE)
   (order-cap-color o7 CAP_GREY)
   (order-gate o7 GATE-1)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-2)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.876003)
   (= (path-length C-BS INPUT C-CS1 INPUT) 3.427032)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 3.425085)
   (= (path-length C-BS INPUT C-CS2 INPUT) 7.801280)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 6.721744)
   (= (path-length C-BS INPUT C-DS INPUT) 6.682416)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.673851)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.876003)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 4.928118)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 4.926170)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 8.749926)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 8.222829)
   (= (path-length C-BS OUTPUT C-DS INPUT) 7.094818)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.086253)
   (= (path-length C-CS1 INPUT C-BS INPUT) 3.427032)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 4.928118)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 3.260362)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 4.815733)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 3.709077)
   (= (path-length C-CS1 INPUT C-DS INPUT) 4.851435)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 5.968028)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 3.425085)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 4.926170)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 3.260362)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 5.656850)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 4.550194)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 5.692552)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 6.809144)
   (= (path-length C-CS2 INPUT C-BS INPUT) 7.801280)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 8.749926)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 4.815733)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 5.656849)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.477818)
   (= (path-length C-CS2 INPUT C-DS INPUT) 2.099276)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 3.035033)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 6.721744)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 8.222829)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 3.709077)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 4.550193)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.477818)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 3.513519)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 4.630112)
   (= (path-length C-DS INPUT C-BS INPUT) 6.682417)
   (= (path-length C-DS INPUT C-BS OUTPUT) 7.094819)
   (= (path-length C-DS INPUT C-CS1 INPUT) 4.851434)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 5.692551)
   (= (path-length C-DS INPUT C-CS2 INPUT) 2.099276)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 3.513519)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.251571)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.673852)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.086254)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 5.968028)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 6.809144)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 3.035033)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 4.630113)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.251571)
   (= (path-length START INPUT C-BS INPUT) 1.090447)
   (= (path-length START INPUT C-BS OUTPUT) 2.591532)
   (= (path-length START INPUT C-CS1 INPUT) 3.086116)
   (= (path-length START INPUT C-CS1 OUTPUT) 3.084169)
   (= (path-length START INPUT C-CS2 INPUT) 7.460365)
   (= (path-length START INPUT C-CS2 OUTPUT) 6.380827)
   (= (path-length START INPUT C-DS INPUT) 7.278471)
   (= (path-length START INPUT C-DS OUTPUT) 7.269907))

(:goal (and    (order-fulfilled o7)  ; Announce 0
)))