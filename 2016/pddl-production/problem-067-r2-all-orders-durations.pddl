(define (problem rcll-production-067-durative)
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
   (order-base-color o1 BASE_SILVER)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_BLACK)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_BLACK)
   (at 236 (order-delivery-window-open o2))
   (at 402 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_BLACK)
   (at 347 (order-delivery-window-open o3))
   (at 484 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 836 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_SILVER)
   (at 569 (order-delivery-window-open o5))
   (at 676 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_BLUE)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-1)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_RED)
   (at 689 (order-delivery-window-open o6))
   (at 855 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_BLUE)
   (order-ring2-color o6 RING_GREEN)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-1)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 650 (order-delivery-window-open o7))
   (at 828 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_YELLOW)
   (order-ring2-color o7 RING_GREEN)
   (order-ring3-color o7 RING_ORANGE)
   (order-cap-color o7 CAP_GREY)
   (order-gate o7 GATE-3)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.252192)
   (= (path-length C-BS INPUT C-CS1 INPUT) 1.334490)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 1.404980)
   (= (path-length C-BS INPUT C-CS2 INPUT) 11.146663)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 8.922105)
   (= (path-length C-BS INPUT C-DS INPUT) 6.442451)
   (= (path-length C-BS INPUT C-DS OUTPUT) 7.936836)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.252192)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 1.265374)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 3.581772)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 10.088252)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 7.863695)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.866430)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.945524)
   (= (path-length C-CS1 INPUT C-BS INPUT) 1.334490)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 1.265374)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.664069)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 10.036622)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 7.812064)
   (= (path-length C-CS1 INPUT C-DS INPUT) 5.825503)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 7.805367)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 1.404979)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 3.581772)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.664069)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 11.176723)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 9.329470)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 5.324989)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 6.819375)
   (= (path-length C-CS2 INPUT C-BS INPUT) 11.146666)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 10.088253)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 10.036623)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 11.176723)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.647722)
   (= (path-length C-CS2 INPUT C-DS INPUT) 8.037563)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 4.808138)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 8.922104)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 7.863694)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 7.812062)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 9.329469)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.647722)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 6.521262)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.248805)
   (= (path-length C-DS INPUT C-BS INPUT) 6.442451)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.866429)
   (= (path-length C-DS INPUT C-CS1 INPUT) 5.825503)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 5.324989)
   (= (path-length C-DS INPUT C-CS2 INPUT) 8.037564)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 6.521263)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.680215)
   (= (path-length C-DS OUTPUT C-BS INPUT) 7.936837)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.945524)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 7.805367)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 6.819376)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 4.808138)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.248806)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.680215)
   (= (path-length START INPUT C-BS INPUT) 2.455771)
   (= (path-length START INPUT C-BS OUTPUT) 1.397360)
   (= (path-length START INPUT C-CS1 INPUT) 1.345729)
   (= (path-length START INPUT C-CS1 OUTPUT) 3.785350)
   (= (path-length START INPUT C-CS2 INPUT) 9.442142)
   (= (path-length START INPUT C-CS2 OUTPUT) 7.217584)
   (= (path-length START INPUT C-DS INPUT) 6.254318)
   (= (path-length START INPUT C-DS OUTPUT) 7.299414))

  (:goal (and

    (order-fulfilled o1)  ; Announce 0
    (order-fulfilled o2)  ; Announce 9
    (order-fulfilled o3)  ; Announce 170
    (order-fulfilled o4)  ; Announce 694
    (order-fulfilled o5)  ; Announce 242
    (order-fulfilled o6)  ; Announce 135
    (order-fulfilled o7)  ; Announce 0
    (order-fulfilled o8)  ; Announce 900
  ))
)
