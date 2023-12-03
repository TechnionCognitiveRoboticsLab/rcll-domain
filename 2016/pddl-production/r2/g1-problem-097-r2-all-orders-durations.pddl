(define (problem rcll-production-097-durative)
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
   (order-base-color o2 BASE_BLACK)
   (at 203 (order-delivery-window-open o2))
   (at 277 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-1)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_SILVER)
   (at 402 (order-delivery-window-open o3))
   (at 564 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 735 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-3)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_RED)
   (at 671 (order-delivery-window-open o5))
   (at 789 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_ORANGE)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-2)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 720 (order-delivery-window-open o6))
   (at 852 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_BLUE)
   (order-ring2-color o6 RING_ORANGE)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-3)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_RED)
   (at 718 (order-delivery-window-open o7))
   (at 887 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_ORANGE)
   (order-ring3-color o7 RING_GREEN)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.999638)
   (= (path-length C-BS INPUT C-CS1 INPUT) 6.365378)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 9.372494)
   (= (path-length C-BS INPUT C-CS2 INPUT) 5.522203)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 3.172535)
   (= (path-length C-BS INPUT C-DS INPUT) 6.986720)
   (= (path-length C-BS INPUT C-DS OUTPUT) 8.977990)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.999638)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 5.546394)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 8.067039)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 4.505798)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 2.156130)
   (= (path-length C-BS OUTPUT C-DS INPUT) 5.244213)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.672534)
   (= (path-length C-CS1 INPUT C-BS INPUT) 6.365379)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 5.546395)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 5.125435)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 8.265212)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 7.322448)
   (= (path-length C-CS1 INPUT C-DS INPUT) 7.526877)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 4.730932)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 9.372493)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 8.067039)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 5.125435)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 7.006948)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 8.315994)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 6.194033)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 3.398088)
   (= (path-length C-CS2 INPUT C-BS INPUT) 5.522204)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 4.505799)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 8.265212)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 7.006948)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.372026)
   (= (path-length C-CS2 INPUT C-DS INPUT) 3.800644)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 6.270411)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 3.172535)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 2.156130)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 7.322447)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 8.315993)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.372026)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 5.493168)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 7.921490)
   (= (path-length C-DS INPUT C-BS INPUT) 6.986720)
   (= (path-length C-DS INPUT C-BS OUTPUT) 5.244213)
   (= (path-length C-DS INPUT C-CS1 INPUT) 7.526877)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 6.194032)
   (= (path-length C-DS INPUT C-CS2 INPUT) 3.800644)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 5.493167)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.312174)
   (= (path-length C-DS OUTPUT C-BS INPUT) 8.977989)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.672535)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 4.730932)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 3.398088)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 6.270411)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 7.921490)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.312174)
   (= (path-length START INPUT C-BS INPUT) 2.327135)
   (= (path-length START INPUT C-BS OUTPUT) 1.508151)
   (= (path-length START INPUT C-CS1 INPUT) 4.719544)
   (= (path-length START INPUT C-CS1 OUTPUT) 7.726660)
   (= (path-length START INPUT C-CS2 INPUT) 5.633873)
   (= (path-length START INPUT C-CS2 OUTPUT) 3.284205)
   (= (path-length START INPUT C-DS INPUT) 6.372287)
   (= (path-length START INPUT C-DS OUTPUT) 7.332157))

(:goal (and    (order-fulfilled o1)  ; Announce 0
)))