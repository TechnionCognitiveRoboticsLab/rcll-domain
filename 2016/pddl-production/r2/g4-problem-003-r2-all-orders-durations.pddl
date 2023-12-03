(define (problem rcll-production-003-durative)
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
   (order-cap-color o1 CAP_BLACK)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 351 (order-delivery-window-open o2))
   (at 484 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-1)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_SILVER)
   (at 679 (order-delivery-window-open o3))
   (at 844 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-3)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 778 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 632 (order-delivery-window-open o5))
   (at 755 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_YELLOW)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-3)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 607 (order-delivery-window-open o6))
   (at 787 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_ORANGE)
   (order-ring2-color o6 RING_BLUE)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-1)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_RED)
   (at 608 (order-delivery-window-open o7))
   (at 784 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_ORANGE)
   (order-ring3-color o7 RING_GREEN)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-1)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_BLACK)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.299945)
   (= (path-length C-BS INPUT C-CS1 INPUT) 11.131202)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 7.828582)
   (= (path-length C-BS INPUT C-CS2 INPUT) 1.703125)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 1.930480)
   (= (path-length C-BS INPUT C-DS INPUT) 6.806370)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.345120)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.299945)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 12.608109)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 9.820347)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 3.877408)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 4.142197)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.495518)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.538479)
   (= (path-length C-CS1 INPUT C-BS INPUT) 11.131201)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 12.608108)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 4.079571)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 11.118313)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 9.588208)
   (= (path-length C-CS1 INPUT C-DS INPUT) 6.132920)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 5.559117)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 7.828581)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 9.820347)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 4.079571)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 8.111396)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 6.285589)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 5.679601)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 4.095551)
   (= (path-length C-CS2 INPUT C-BS INPUT) 1.703125)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 3.877409)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 11.118311)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 8.111396)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.051510)
   (= (path-length C-CS2 INPUT C-DS INPUT) 6.290777)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 5.829528)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 1.930480)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 4.142197)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 9.588207)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 6.285589)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.051510)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 7.090465)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.041275)
   (= (path-length C-DS INPUT C-BS INPUT) 6.806370)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.495517)
   (= (path-length C-DS INPUT C-CS1 INPUT) 6.132920)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 5.679601)
   (= (path-length C-DS INPUT C-CS2 INPUT) 6.290777)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 7.090464)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.156741)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.345120)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.538479)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 5.559117)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 4.095550)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 5.829528)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.041276)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.156741)
   (= (path-length START INPUT C-BS INPUT) 0.696952)
   (= (path-length START INPUT C-BS OUTPUT) 2.908668)
   (= (path-length START INPUT C-CS1 INPUT) 10.524460)
   (= (path-length START INPUT C-CS1 OUTPUT) 7.221840)
   (= (path-length START INPUT C-CS2 INPUT) 1.817981)
   (= (path-length START INPUT C-CS2 OUTPUT) 1.323739)
   (= (path-length START INPUT C-DS INPUT) 6.921227)
   (= (path-length START INPUT C-DS OUTPUT) 6.459977))

(:goal (and    (order-fulfilled o4)  ; Announce 655
)))