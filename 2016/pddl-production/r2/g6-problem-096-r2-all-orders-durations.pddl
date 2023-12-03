(define (problem rcll-production-096-durative)
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
   (order-base-color o2 BASE_RED)
   (at 394 (order-delivery-window-open o2))
   (at 497 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-1)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_BLACK)
   (at 412 (order-delivery-window-open o3))
   (at 523 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-1)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 788 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_RED)
   (at 506 (order-delivery-window-open o5))
   (at 643 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_BLUE)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-2)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_BLACK)
   (at 631 (order-delivery-window-open o6))
   (at 772 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_ORANGE)
   (order-ring2-color o6 RING_GREEN)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-1)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 677 (order-delivery-window-open o7))
   (at 802 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_ORANGE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-3)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_BLACK)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.720916)
   (= (path-length C-BS INPUT C-CS1 INPUT) 8.378824)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 9.576721)
   (= (path-length C-BS INPUT C-CS2 INPUT) 4.598154)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 5.348441)
   (= (path-length C-BS INPUT C-DS INPUT) 7.433177)
   (= (path-length C-BS INPUT C-DS OUTPUT) 7.137262)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.720916)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 6.745021)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 7.942918)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 3.555544)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 4.305831)
   (= (path-length C-BS OUTPUT C-DS INPUT) 5.799375)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 5.503459)
   (= (path-length C-CS1 INPUT C-BS INPUT) 8.378823)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 6.745022)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 4.750431)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 5.052949)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 4.332253)
   (= (path-length C-CS1 INPUT C-DS INPUT) 1.192699)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 2.831133)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 9.576719)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 7.942918)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 4.750431)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 5.115932)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 4.395236)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 4.976688)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 6.698808)
   (= (path-length C-CS2 INPUT C-BS INPUT) 4.598154)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 3.555544)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 5.052949)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 5.115932)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 2.269648)
   (= (path-length C-CS2 INPUT C-DS INPUT) 5.279207)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 5.717032)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 5.348442)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 4.305832)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 4.332253)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 4.395236)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 2.269648)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 4.558510)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.280631)
   (= (path-length C-DS INPUT C-BS INPUT) 7.433178)
   (= (path-length C-DS INPUT C-BS OUTPUT) 5.799375)
   (= (path-length C-DS INPUT C-CS1 INPUT) 1.192699)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 4.976688)
   (= (path-length C-DS INPUT C-CS2 INPUT) 5.279207)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 4.558511)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.141076)
   (= (path-length C-DS OUTPUT C-BS INPUT) 7.137262)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 5.503459)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 2.831133)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 6.698808)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 5.717032)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.280631)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.141076)
   (= (path-length START INPUT C-BS INPUT) 2.262186)
   (= (path-length START INPUT C-BS OUTPUT) 1.219577)
   (= (path-length START INPUT C-CS1 INPUT) 7.232249)
   (= (path-length START INPUT C-CS1 OUTPUT) 7.374799)
   (= (path-length START INPUT C-CS2 INPUT) 2.393796)
   (= (path-length START INPUT C-CS2 OUTPUT) 3.144084)
   (= (path-length START INPUT C-DS INPUT) 6.286602)
   (= (path-length START INPUT C-DS OUTPUT) 5.990687))

(:goal (and    (order-fulfilled o6)  ; Announce 61
)))