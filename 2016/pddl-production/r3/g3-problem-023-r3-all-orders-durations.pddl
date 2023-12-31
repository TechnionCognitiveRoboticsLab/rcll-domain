(define (problem rcll-production-023-durative)
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
   (order-base-color o1 BASE_SILVER)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_GREY)
   (order-gate o1 GATE-1)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 308 (order-delivery-window-open o2))
   (at 409 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-1)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_BLACK)
   (at 518 (order-delivery-window-open o3))
   (at 673 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-3)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 823 (order-delivery-window-open o4))
   (at 894 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 600 (order-delivery-window-open o5))
   (at 700 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_BLUE)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-2)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_BLACK)
   (at 632 (order-delivery-window-open o6))
   (at 772 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_YELLOW)
   (order-ring2-color o6 RING_BLUE)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-2)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_BLACK)
   (at 650 (order-delivery-window-open o7))
   (at 782 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_GREEN)
   (order-ring3-color o7 RING_YELLOW)
   (order-cap-color o7 CAP_GREY)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_BLACK)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-2)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.819637)
   (= (path-length C-BS INPUT C-CS1 INPUT) 8.645711)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 11.454588)
   (= (path-length C-BS INPUT C-CS2 INPUT) 3.352306)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 2.126095)
   (= (path-length C-BS INPUT C-DS INPUT) 7.326684)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.109885)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.819637)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 9.203620)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 11.664823)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 4.939792)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 3.407166)
   (= (path-length C-BS OUTPUT C-DS INPUT) 7.442864)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.226065)
   (= (path-length C-CS1 INPUT C-BS INPUT) 8.645710)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 9.203619)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 3.036869)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 6.225391)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 7.577180)
   (= (path-length C-CS1 INPUT C-DS INPUT) 4.158424)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 6.244499)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 11.454588)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 11.664822)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 3.036868)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 8.686594)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 10.038383)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 6.390133)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 6.424385)
   (= (path-length C-CS2 INPUT C-BS INPUT) 3.352306)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 4.939792)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 6.225391)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 8.686595)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.313352)
   (= (path-length C-CS2 INPUT C-DS INPUT) 4.464636)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 4.432072)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 2.126095)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 3.407166)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 7.577181)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 10.038383)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.313352)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 5.816425)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 4.599626)
   (= (path-length C-DS INPUT C-BS INPUT) 7.326684)
   (= (path-length C-DS INPUT C-BS OUTPUT) 7.442865)
   (= (path-length C-DS INPUT C-CS1 INPUT) 4.158424)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 6.390134)
   (= (path-length C-DS INPUT C-CS2 INPUT) 4.464636)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 5.816425)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.132337)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.109885)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.226066)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 6.244500)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 6.424386)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 4.432072)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 4.599626)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.132337)
   (= (path-length START INPUT C-BS INPUT) 1.387830)
   (= (path-length START INPUT C-BS OUTPUT) 3.443316)
   (= (path-length START INPUT C-CS1 INPUT) 8.003410)
   (= (path-length START INPUT C-CS1 OUTPUT) 10.812287)
   (= (path-length START INPUT C-CS2 INPUT) 2.710006)
   (= (path-length START INPUT C-CS2 OUTPUT) 1.946790)
   (= (path-length START INPUT C-DS INPUT) 6.774294)
   (= (path-length START INPUT C-DS OUTPUT) 5.930580))

(:goal (and    (order-fulfilled o3)  ; Announce 390
)))