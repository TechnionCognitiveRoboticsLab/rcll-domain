(define (problem rcll-production-099-durative)
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
   (order-gate o1 GATE-1)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_SILVER)
   (at 270 (order-delivery-window-open o2))
   (at 348 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-2)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_RED)
   (at 504 (order-delivery-window-open o3))
   (at 572 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-3)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 722 (order-delivery-window-open o4))
   (at 796 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 582 (order-delivery-window-open o5))
   (at 697 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_BLUE)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-2)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_BLACK)
   (at 703 (order-delivery-window-open o6))
   (at 866 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_YELLOW)
   (order-ring2-color o6 RING_GREEN)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-2)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_BLACK)
   (at 672 (order-delivery-window-open o7))
   (at 812 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_YELLOW)
   (order-ring2-color o7 RING_GREEN)
   (order-ring3-color o7 RING_BLUE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-3)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 3.121862)
   (= (path-length C-BS INPUT C-CS1 INPUT) 5.396646)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 6.165161)
   (= (path-length C-BS INPUT C-CS2 INPUT) 10.450257)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 10.865444)
   (= (path-length C-BS INPUT C-DS INPUT) 6.448486)
   (= (path-length C-BS INPUT C-DS OUTPUT) 8.216610)
   (= (path-length C-BS OUTPUT C-BS INPUT) 3.121862)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 4.618370)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 5.386886)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 10.031058)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 10.087169)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.145396)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.797411)
   (= (path-length C-CS1 INPUT C-BS INPUT) 5.396645)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 4.618370)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 4.458546)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 7.029613)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 6.985316)
   (= (path-length C-CS1 INPUT C-DS INPUT) 3.998268)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 4.877385)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 6.165161)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 5.386886)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 4.458546)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 6.962867)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 5.944664)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 6.516698)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 4.810639)
   (= (path-length C-CS2 INPUT C-BS INPUT) 10.450256)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 10.031058)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 7.029613)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 6.962867)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 5.137072)
   (= (path-length C-CS2 INPUT C-DS INPUT) 5.841701)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 3.512135)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 10.865442)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 10.087168)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 6.985315)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 5.944664)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 5.137072)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 9.467065)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 7.150698)
   (= (path-length C-DS INPUT C-BS INPUT) 6.448485)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.145395)
   (= (path-length C-DS INPUT C-CS1 INPUT) 3.998268)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 6.516698)
   (= (path-length C-DS INPUT C-CS2 INPUT) 5.841701)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 9.467066)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.415433)
   (= (path-length C-DS OUTPUT C-BS INPUT) 8.216610)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.797411)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 4.877385)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 4.810638)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 3.512135)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 7.150698)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.415432)
   (= (path-length START INPUT C-BS INPUT) 4.478862)
   (= (path-length START INPUT C-BS OUTPUT) 1.995291)
   (= (path-length START INPUT C-CS1 INPUT) 3.518023)
   (= (path-length START INPUT C-CS1 OUTPUT) 4.286540)
   (= (path-length START INPUT C-CS2 INPUT) 8.930711)
   (= (path-length START INPUT C-CS2 OUTPUT) 8.986821)
   (= (path-length START INPUT C-DS INPUT) 5.045049)
   (= (path-length START INPUT C-DS OUTPUT) 6.697065))

(:goal (and    (order-fulfilled o5)  ; Announce 238
)))