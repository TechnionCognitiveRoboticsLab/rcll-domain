(define (problem rcll-production-028-durative)
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
   (order-base-color o1 BASE_RED)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_GREY)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_BLACK)
   (at 243 (order-delivery-window-open o2))
   (at 375 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-1)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_RED)
   (at 680 (order-delivery-window-open o3))
   (at 821 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-1)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 720 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-3)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 611 (order-delivery-window-open o5))
   (at 715 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_GREEN)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-3)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_BLACK)
   (at 658 (order-delivery-window-open o6))
   (at 832 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_YELLOW)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-3)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 675 (order-delivery-window-open o7))
   (at 840 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_GREEN)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_ORANGE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-3)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_BLACK)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-1)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.867066)
   (= (path-length C-BS INPUT C-CS1 INPUT) 10.956058)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 9.722835)
   (= (path-length C-BS INPUT C-CS2 INPUT) 8.118965)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 8.965117)
   (= (path-length C-BS INPUT C-DS INPUT) 9.846866)
   (= (path-length C-BS INPUT C-DS OUTPUT) 8.598476)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.867066)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 9.563777)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 8.330555)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 6.322462)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 7.572838)
   (= (path-length C-BS OUTPUT C-DS INPUT) 8.050362)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.801972)
   (= (path-length C-CS1 INPUT C-BS INPUT) 10.956058)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 9.563777)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.582717)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 7.410857)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 5.494397)
   (= (path-length C-CS1 INPUT C-DS INPUT) 6.541071)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 9.078115)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 9.722835)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 8.330555)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.582717)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 6.177634)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 4.261174)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 5.307849)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 7.844893)
   (= (path-length C-CS2 INPUT C-BS INPUT) 8.118966)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 6.322462)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 7.410856)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 6.177634)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.379911)
   (= (path-length C-CS2 INPUT C-DS INPUT) 1.999067)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 2.415623)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 8.965117)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 7.572837)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 5.494397)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 4.261174)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.379911)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 2.510126)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 5.047169)
   (= (path-length C-DS INPUT C-BS INPUT) 9.846865)
   (= (path-length C-DS INPUT C-BS OUTPUT) 8.050362)
   (= (path-length C-DS INPUT C-CS1 INPUT) 6.541071)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 5.307849)
   (= (path-length C-DS INPUT C-CS2 INPUT) 1.999067)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 2.510126)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.083662)
   (= (path-length C-DS OUTPUT C-BS INPUT) 8.598476)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.801972)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 9.078114)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 7.844892)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 2.415623)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 5.047169)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.083661)
   (= (path-length START INPUT C-BS INPUT) 3.381712)
   (= (path-length START INPUT C-BS OUTPUT) 3.840044)
   (= (path-length START INPUT C-CS1 INPUT) 7.657130)
   (= (path-length START INPUT C-CS1 OUTPUT) 6.423908)
   (= (path-length START INPUT C-CS2 INPUT) 5.853516)
   (= (path-length START INPUT C-CS2 OUTPUT) 5.666191)
   (= (path-length START INPUT C-DS INPUT) 6.712865)
   (= (path-length START INPUT C-DS OUTPUT) 6.637178))

(:goal (and    (order-fulfilled o4)  ; Announce 491
)))