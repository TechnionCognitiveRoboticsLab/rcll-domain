(define (problem rcll-production-079-durative)
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
   (order-base-color o1 BASE_BLACK)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_BLACK)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 232 (order-delivery-window-open o2))
   (at 349 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-1)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_SILVER)
   (at 458 (order-delivery-window-open o3))
   (at 628 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 753 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 666 (order-delivery-window-open o5))
   (at 809 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_ORANGE)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-1)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 654 (order-delivery-window-open o6))
   (at 813 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_BLUE)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-1)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_BLACK)
   (at 635 (order-delivery-window-open o7))
   (at 778 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_ORANGE)
   (order-ring3-color o7 RING_YELLOW)
   (order-cap-color o7 CAP_GREY)
   (order-gate o7 GATE-1)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-2)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.763203)
   (= (path-length C-BS INPUT C-CS1 INPUT) 10.243678)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 9.405694)
   (= (path-length C-BS INPUT C-CS2 INPUT) 3.701392)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 2.521891)
   (= (path-length C-BS INPUT C-DS INPUT) 7.703308)
   (= (path-length C-BS INPUT C-DS OUTPUT) 7.388236)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.763202)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 11.170231)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 10.701686)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 2.278427)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 3.864765)
   (= (path-length C-BS OUTPUT C-DS INPUT) 6.280342)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 8.684229)
   (= (path-length C-CS1 INPUT C-BS INPUT) 10.243678)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 11.170233)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 3.581078)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 9.461175)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 7.908775)
   (= (path-length C-CS1 INPUT C-DS INPUT) 5.020761)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 4.729339)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 9.405693)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 10.701687)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 3.581078)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 8.992629)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 7.070790)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 7.562325)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 6.521162)
   (= (path-length C-CS2 INPUT C-BS INPUT) 3.701392)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 2.278428)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 9.461175)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 8.992629)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.613353)
   (= (path-length C-CS2 INPUT C-DS INPUT) 4.571285)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 6.975172)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 2.521891)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 3.864765)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 7.908775)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 7.070790)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.613353)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 5.747776)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 5.053333)
   (= (path-length C-DS INPUT C-BS INPUT) 7.703308)
   (= (path-length C-DS INPUT C-BS OUTPUT) 6.280342)
   (= (path-length C-DS INPUT C-CS1 INPUT) 5.020761)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 7.562325)
   (= (path-length C-DS INPUT C-CS2 INPUT) 4.571285)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 5.747777)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.159370)
   (= (path-length C-DS OUTPUT C-BS INPUT) 7.388237)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 8.684229)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 4.729339)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 6.521162)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 6.975172)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 5.053333)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.159370)
   (= (path-length START INPUT C-BS INPUT) 1.312582)
   (= (path-length START INPUT C-BS OUTPUT) 3.385028)
   (= (path-length START INPUT C-CS1 INPUT) 9.341178)
   (= (path-length START INPUT C-CS1 OUTPUT) 8.503193)
   (= (path-length START INPUT C-CS2 INPUT) 3.133616)
   (= (path-length START INPUT C-CS2 OUTPUT) 1.954115)
   (= (path-length START INPUT C-DS INPUT) 7.135531)
   (= (path-length START INPUT C-DS OUTPUT) 6.485734))

(:goal (and    (order-fulfilled o5)  ; Announce 366
)))