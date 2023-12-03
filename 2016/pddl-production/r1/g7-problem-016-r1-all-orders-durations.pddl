(define (problem rcll-production-016-durative)
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
   (order-base-color o1 BASE_BLACK)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_BLACK)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 209 (order-delivery-window-open o2))
   (at 342 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-1)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_SILVER)
   (at 459 (order-delivery-window-open o3))
   (at 541 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 798 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_RED)
   (at 566 (order-delivery-window-open o5))
   (at 707 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_YELLOW)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-2)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_BLACK)
   (at 609 (order-delivery-window-open o6))
   (at 788 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_BLUE)
   (order-ring2-color o6 RING_GREEN)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-3)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_BLACK)
   (at 620 (order-delivery-window-open o7))
   (at 770 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_YELLOW)
   (order-ring2-color o7 RING_ORANGE)
   (order-ring3-color o7 RING_GREEN)
   (order-cap-color o7 CAP_GREY)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-1)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.615478)
   (= (path-length C-BS INPUT C-CS1 INPUT) 12.254657)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 10.963749)
   (= (path-length C-BS INPUT C-CS2 INPUT) 2.684118)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 5.160885)
   (= (path-length C-BS INPUT C-DS INPUT) 8.382800)
   (= (path-length C-BS INPUT C-DS OUTPUT) 8.838386)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.615478)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 10.303489)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 9.012581)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 3.341104)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 3.600969)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.834111)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.887218)
   (= (path-length C-CS1 INPUT C-BS INPUT) 12.254655)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 10.303488)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.623855)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 11.551559)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 11.258648)
   (= (path-length C-CS1 INPUT C-DS INPUT) 8.987787)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 8.096366)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 10.963748)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 9.012580)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.623856)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 10.260652)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 9.967740)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 8.549374)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 6.805459)
   (= (path-length C-CS2 INPUT C-BS INPUT) 2.684117)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 3.341104)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 11.551559)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 10.260652)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.106586)
   (= (path-length C-CS2 INPUT C-DS INPUT) 5.936915)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 8.135288)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 5.160886)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 3.600969)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 11.258648)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 9.967740)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.106586)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 3.565598)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.728811)
   (= (path-length C-DS INPUT C-BS INPUT) 8.382801)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.834111)
   (= (path-length C-DS INPUT C-CS1 INPUT) 8.987786)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 8.549374)
   (= (path-length C-DS INPUT C-CS2 INPUT) 5.936916)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 3.565598)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.207366)
   (= (path-length C-DS OUTPUT C-BS INPUT) 8.838386)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.887218)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 8.096365)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 6.805459)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 8.135287)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.728811)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.207366)
   (= (path-length START INPUT C-BS INPUT) 2.309678)
   (= (path-length START INPUT C-BS OUTPUT) 1.631392)
   (= (path-length START INPUT C-CS1 INPUT) 10.001838)
   (= (path-length START INPUT C-CS1 OUTPUT) 8.710931)
   (= (path-length START INPUT C-CS2 INPUT) 4.343280)
   (= (path-length START INPUT C-CS2 OUTPUT) 4.050368)
   (= (path-length START INPUT C-DS INPUT) 7.283510)
   (= (path-length START INPUT C-DS OUTPUT) 6.585568))

(:goal (and    (order-fulfilled o7)  ; Announce 0
)))