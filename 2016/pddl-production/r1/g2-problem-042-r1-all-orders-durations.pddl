(define (problem rcll-production-042-durative)
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
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_SILVER)
   (at 302 (order-delivery-window-open o2))
   (at 388 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_SILVER)
   (at 661 (order-delivery-window-open o3))
   (at 738 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_BLACK)
   (at 760 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 616 (order-delivery-window-open o5))
   (at 709 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_YELLOW)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-1)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 681 (order-delivery-window-open o6))
   (at 823 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_YELLOW)
   (order-ring2-color o6 RING_BLUE)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-1)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 610 (order-delivery-window-open o7))
   (at 772 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_GREEN)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_ORANGE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-1)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.233759)
   (= (path-length C-BS INPUT C-CS1 INPUT) 12.241288)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 12.037848)
   (= (path-length C-BS INPUT C-CS2 INPUT) 4.459124)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 2.006980)
   (= (path-length C-BS INPUT C-DS INPUT) 6.961051)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.628389)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.233759)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 11.417660)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 11.214219)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 5.969973)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 4.146868)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.137423)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 5.804760)
   (= (path-length C-CS1 INPUT C-BS INPUT) 12.241288)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 11.417660)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.901477)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 10.804935)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 11.865656)
   (= (path-length C-CS1 INPUT C-DS INPUT) 7.071075)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 6.886534)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 12.037848)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 11.214219)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.901478)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 10.564573)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 11.662216)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 6.585313)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 6.683093)
   (= (path-length C-CS2 INPUT C-BS INPUT) 4.459124)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 5.969974)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 10.804935)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 10.564572)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.334978)
   (= (path-length C-CS2 INPUT C-DS INPUT) 3.999588)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 5.192035)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 2.006980)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 4.146868)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 11.865657)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 11.662216)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.334977)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 6.585420)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.252758)
   (= (path-length C-DS INPUT C-BS INPUT) 6.961051)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.137423)
   (= (path-length C-DS INPUT C-CS1 INPUT) 7.071076)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 6.585314)
   (= (path-length C-DS INPUT C-CS2 INPUT) 3.999588)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 6.585419)
   (= (path-length C-DS INPUT C-DS OUTPUT) 4.421463)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.628388)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 5.804760)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 6.886534)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 6.683094)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 5.192035)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.252757)
   (= (path-length C-DS OUTPUT C-DS INPUT) 4.421463)
   (= (path-length START INPUT C-BS INPUT) 3.368321)
   (= (path-length START INPUT C-BS OUTPUT) 1.198025)
   (= (path-length START INPUT C-CS1 INPUT) 11.139321)
   (= (path-length START INPUT C-CS1 OUTPUT) 10.935881)
   (= (path-length START INPUT C-CS2 INPUT) 5.691634)
   (= (path-length START INPUT C-CS2 OUTPUT) 4.386436)
   (= (path-length START INPUT C-DS INPUT) 5.859084)
   (= (path-length START INPUT C-DS OUTPUT) 5.526422))

(:goal (and    (order-fulfilled o2)  ; Announce 74
)))