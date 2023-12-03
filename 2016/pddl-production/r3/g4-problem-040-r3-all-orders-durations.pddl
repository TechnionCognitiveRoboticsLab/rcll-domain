(define (problem rcll-production-040-durative)
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
   (order-base-color o2 BASE_BLACK)
   (at 246 (order-delivery-window-open o2))
   (at 329 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_BLACK)
   (at 658 (order-delivery-window-open o3))
   (at 772 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 726 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_RED)
   (at 608 (order-delivery-window-open o5))
   (at 723 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_BLUE)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-2)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 645 (order-delivery-window-open o6))
   (at 776 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_YELLOW)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-1)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 696 (order-delivery-window-open o7))
   (at 863 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_ORANGE)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_BLUE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-1)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_BLACK)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-1)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.877259)
   (= (path-length C-BS INPUT C-CS1 INPUT) 2.927007)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 3.079866)
   (= (path-length C-BS INPUT C-CS2 INPUT) 7.980316)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 9.358287)
   (= (path-length C-BS INPUT C-DS INPUT) 8.569452)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.741771)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.877259)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 2.244651)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 4.395528)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 8.745857)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 10.123828)
   (= (path-length C-BS OUTPUT C-DS INPUT) 7.376694)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.397237)
   (= (path-length C-CS1 INPUT C-BS INPUT) 2.927007)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 2.244651)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.961164)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 7.861614)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 9.239585)
   (= (path-length C-CS1 INPUT C-DS INPUT) 7.303670)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 6.324213)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 3.079866)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 4.395528)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.961164)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 5.166325)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 6.544295)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 5.755462)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 3.927779)
   (= (path-length C-CS2 INPUT C-BS INPUT) 7.980317)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 8.745857)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 7.861613)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 5.166325)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 2.996783)
   (= (path-length C-CS2 INPUT C-DS INPUT) 6.566678)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 5.717625)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 9.358285)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 10.123827)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 9.239583)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 6.544295)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 2.996783)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 7.944648)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 7.095594)
   (= (path-length C-DS INPUT C-BS INPUT) 8.569453)
   (= (path-length C-DS INPUT C-BS OUTPUT) 7.376695)
   (= (path-length C-DS INPUT C-CS1 INPUT) 7.303670)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 5.755462)
   (= (path-length C-DS INPUT C-CS2 INPUT) 6.566678)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 7.944648)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.526920)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.741771)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.397237)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 6.324212)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 3.927779)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 5.717625)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 7.095595)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.526920)
   (= (path-length START INPUT C-BS INPUT) 1.546219)
   (= (path-length START INPUT C-BS OUTPUT) 3.532037)
   (= (path-length START INPUT C-CS1 INPUT) 2.097672)
   (= (path-length START INPUT C-CS1 OUTPUT) 2.250530)
   (= (path-length START INPUT C-CS2 INPUT) 6.844512)
   (= (path-length START INPUT C-CS2 OUTPUT) 8.222484)
   (= (path-length START INPUT C-DS INPUT) 7.740117)
   (= (path-length START INPUT C-DS OUTPUT) 5.912435))

(:goal (and    (order-fulfilled o4)  ; Announce 599
)))