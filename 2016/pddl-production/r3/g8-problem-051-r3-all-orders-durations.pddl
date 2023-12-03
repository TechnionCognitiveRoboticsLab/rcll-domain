(define (problem rcll-production-051-durative)
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
   (order-cap-color o1 CAP_BLACK)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_RED)
   (at 296 (order-delivery-window-open o2))
   (at 443 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_SILVER)
   (at 620 (order-delivery-window-open o3))
   (at 787 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-3)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 730 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 525 (order-delivery-window-open o5))
   (at 670 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_GREEN)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-2)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_BLACK)
   (at 695 (order-delivery-window-open o6))
   (at 825 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_ORANGE)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-2)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 704 (order-delivery-window-open o7))
   (at 881 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_GREEN)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-3)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.524529)
   (= (path-length C-BS INPUT C-CS1 INPUT) 7.167541)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 5.636226)
   (= (path-length C-BS INPUT C-CS2 INPUT) 6.491786)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 4.410566)
   (= (path-length C-BS INPUT C-DS INPUT) 6.555101)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.337890)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.524528)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 7.829156)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 6.297842)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 7.153402)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 5.072182)
   (= (path-length C-BS OUTPUT C-DS INPUT) 7.216716)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.999505)
   (= (path-length C-CS1 INPUT C-BS INPUT) 7.167541)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 7.829156)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 4.053316)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 3.409276)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 3.018934)
   (= (path-length C-CS1 INPUT C-DS INPUT) 5.038711)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 3.836736)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 5.636226)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 6.297842)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 4.053315)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 4.544121)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 4.153779)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 6.173556)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 4.971581)
   (= (path-length C-CS2 INPUT C-BS INPUT) 6.491786)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 7.153402)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 3.409276)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 4.544122)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 3.509740)
   (= (path-length C-CS2 INPUT C-DS INPUT) 2.809691)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 0.545000)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 4.410566)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 5.072181)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 3.018934)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 4.153779)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 3.509740)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 4.993625)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 3.937200)
   (= (path-length C-DS INPUT C-BS INPUT) 6.555100)
   (= (path-length C-DS INPUT C-BS OUTPUT) 7.216716)
   (= (path-length C-DS INPUT C-CS1 INPUT) 5.038711)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 6.173556)
   (= (path-length C-DS INPUT C-CS2 INPUT) 2.809691)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 4.993625)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.237151)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.337890)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.999505)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 3.836737)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 4.971582)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 0.545000)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 3.937200)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.237152)
   (= (path-length START INPUT C-BS INPUT) 1.255545)
   (= (path-length START INPUT C-BS OUTPUT) 3.225438)
   (= (path-length START INPUT C-CS1 INPUT) 6.670274)
   (= (path-length START INPUT C-CS1 OUTPUT) 5.138960)
   (= (path-length START INPUT C-CS2 INPUT) 5.994520)
   (= (path-length START INPUT C-CS2 OUTPUT) 3.913299)
   (= (path-length START INPUT C-DS INPUT) 6.057834)
   (= (path-length START INPUT C-DS OUTPUT) 5.840623))

(:goal (and    (order-fulfilled o8)  ; Announce 900
)))