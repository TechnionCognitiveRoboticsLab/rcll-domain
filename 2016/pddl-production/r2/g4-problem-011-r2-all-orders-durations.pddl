(define (problem rcll-production-011-durative)
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
   (order-gate o1 GATE-1)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_BLACK)
   (at 346 (order-delivery-window-open o2))
   (at 457 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-2)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_SILVER)
   (at 599 (order-delivery-window-open o3))
   (at 698 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-1)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 761 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-3)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 546 (order-delivery-window-open o5))
   (at 686 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_YELLOW)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-3)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_RED)
   (at 628 (order-delivery-window-open o6))
   (at 806 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_ORANGE)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-2)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 679 (order-delivery-window-open o7))
   (at 833 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_ORANGE)
   (order-cap-color o7 CAP_GREY)
   (order-gate o7 GATE-3)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_RED)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 3.593990)
   (= (path-length C-BS INPUT C-CS1 INPUT) 11.213961)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 9.940557)
   (= (path-length C-BS INPUT C-CS2 INPUT) 8.599404)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 6.411694)
   (= (path-length C-BS INPUT C-DS INPUT) 8.440570)
   (= (path-length C-BS INPUT C-DS OUTPUT) 7.319964)
   (= (path-length C-BS OUTPUT C-BS INPUT) 3.593990)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 9.022297)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 7.748894)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 6.407741)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 5.165608)
   (= (path-length C-BS OUTPUT C-DS INPUT) 7.194484)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.073878)
   (= (path-length C-CS1 INPUT C-BS INPUT) 11.213959)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 9.022297)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 4.567498)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 4.927954)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 6.921648)
   (= (path-length C-CS1 INPUT C-DS INPUT) 6.148126)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 5.514086)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 9.940556)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 7.748893)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 4.567498)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 5.157051)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 7.331182)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 7.550082)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 6.916042)
   (= (path-length C-CS2 INPUT C-BS INPUT) 8.599403)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 6.407741)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 4.927954)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 5.157051)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.578314)
   (= (path-length C-CS2 INPUT C-DS INPUT) 2.804792)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 2.170752)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 6.411694)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 5.165608)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 6.921648)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 7.331182)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.578314)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 2.915962)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 1.795356)
   (= (path-length C-DS INPUT C-BS INPUT) 8.440570)
   (= (path-length C-DS INPUT C-BS OUTPUT) 7.194485)
   (= (path-length C-DS INPUT C-CS1 INPUT) 6.148126)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 7.550082)
   (= (path-length C-DS INPUT C-CS2 INPUT) 2.804792)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 2.915962)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.222583)
   (= (path-length C-DS OUTPUT C-BS INPUT) 7.319964)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.073878)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 5.514085)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 6.916042)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 2.170752)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 1.795356)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.222583)
   (= (path-length START INPUT C-BS INPUT) 2.935751)
   (= (path-length START INPUT C-BS OUTPUT) 1.415205)
   (= (path-length START INPUT C-CS1 INPUT) 8.352670)
   (= (path-length START INPUT C-CS1 OUTPUT) 7.079267)
   (= (path-length START INPUT C-CS2 INPUT) 5.738114)
   (= (path-length START INPUT C-CS2 OUTPUT) 5.465118)
   (= (path-length START INPUT C-DS INPUT) 7.493994)
   (= (path-length START INPUT C-DS OUTPUT) 6.373388))

(:goal (and    (order-fulfilled o4)  ; Announce 627
)))