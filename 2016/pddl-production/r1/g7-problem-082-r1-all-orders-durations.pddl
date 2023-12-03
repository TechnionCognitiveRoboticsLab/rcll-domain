(define (problem rcll-production-082-durative)
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
   (at 332 (order-delivery-window-open o2))
   (at 509 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-2)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_RED)
   (at 393 (order-delivery-window-open o3))
   (at 530 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-1)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 761 (order-delivery-window-open o4))
   (at 896 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_RED)
   (at 578 (order-delivery-window-open o5))
   (at 676 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_ORANGE)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-1)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 685 (order-delivery-window-open o6))
   (at 847 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_YELLOW)
   (order-ring2-color o6 RING_BLUE)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-3)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 664 (order-delivery-window-open o7))
   (at 836 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_GREEN)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_BLUE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_RED)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-2)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.867066)
   (= (path-length C-BS INPUT C-CS1 INPUT) 14.019907)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 12.351106)
   (= (path-length C-BS INPUT C-CS2 INPUT) 7.574652)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 4.673752)
   (= (path-length C-BS INPUT C-DS INPUT) 8.264357)
   (= (path-length C-BS INPUT C-DS OUTPUT) 9.083362)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.867066)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 12.794773)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 11.125973)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 6.349518)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 2.877248)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.467852)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.858228)
   (= (path-length C-CS1 INPUT C-BS INPUT) 14.019909)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 12.794773)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.884111)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 9.219096)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 11.353206)
   (= (path-length C-CS1 INPUT C-DS INPUT) 7.864624)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 6.773207)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 12.351108)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 11.125973)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.884111)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 8.745464)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 10.273274)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 8.161613)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 7.032743)
   (= (path-length C-CS2 INPUT C-BS INPUT) 7.574652)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 6.349518)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 9.219095)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 8.745463)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.997355)
   (= (path-length C-CS2 INPUT C-DS INPUT) 1.894188)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 4.282550)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 4.673752)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 2.877249)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 11.353204)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 10.273274)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.997355)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 3.926314)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.664006)
   (= (path-length C-DS INPUT C-BS INPUT) 8.264356)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.467851)
   (= (path-length C-DS INPUT C-CS1 INPUT) 7.864623)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 8.161614)
   (= (path-length C-DS INPUT C-CS2 INPUT) 1.894188)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 3.926314)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.175424)
   (= (path-length C-DS OUTPUT C-BS INPUT) 9.083362)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.858228)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 6.773206)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 7.032743)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 4.282550)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.664007)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.175424)
   (= (path-length START INPUT C-BS INPUT) 3.635423)
   (= (path-length START INPUT C-BS OUTPUT) 4.242958)
   (= (path-length START INPUT C-CS1 INPUT) 11.167396)
   (= (path-length START INPUT C-CS1 OUTPUT) 9.498595)
   (= (path-length START INPUT C-CS2 INPUT) 4.722140)
   (= (path-length START INPUT C-CS2 OUTPUT) 3.390260)
   (= (path-length START INPUT C-DS INPUT) 5.888799)
   (= (path-length START INPUT C-DS OUTPUT) 6.230850))

(:goal (and    (order-fulfilled o7)  ; Announce 0
)))