(define (problem rcll-production-080-durative)
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
   (order-gate o1 GATE-2)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_BLACK)
   (at 302 (order-delivery-window-open o2))
   (at 447 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_BLACK)
   (at 505 (order-delivery-window-open o3))
   (at 629 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-1)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_BLACK)
   (at 754 (order-delivery-window-open o4))
   (at 884 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_RED)
   (at 665 (order-delivery-window-open o5))
   (at 772 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_GREEN)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-1)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 605 (order-delivery-window-open o6))
   (at 782 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_YELLOW)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-3)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_RED)
   (at 661 (order-delivery-window-open o7))
   (at 841 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_ORANGE)
   (order-ring2-color o7 RING_GREEN)
   (order-ring3-color o7 RING_YELLOW)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_BLACK)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.708368)
   (= (path-length C-BS INPUT C-CS1 INPUT) 5.803131)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 1.550739)
   (= (path-length C-BS INPUT C-CS2 INPUT) 10.097177)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 11.165224)
   (= (path-length C-BS INPUT C-DS INPUT) 7.261075)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.807980)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.708367)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 5.443112)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 2.384803)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 9.664757)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 10.811934)
   (= (path-length C-BS OUTPUT C-DS INPUT) 7.726787)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.642044)
   (= (path-length C-CS1 INPUT C-BS INPUT) 5.803132)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 5.443112)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 4.352995)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 7.596302)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 7.968128)
   (= (path-length C-CS1 INPUT C-DS INPUT) 4.063978)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 3.610883)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 1.550739)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 2.384803)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 4.352995)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 9.227529)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 9.715088)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 5.810938)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 5.357843)
   (= (path-length C-CS2 INPUT C-BS INPUT) 10.097178)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 9.664758)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 7.596302)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 9.227530)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 4.091772)
   (= (path-length C-CS2 INPUT C-DS INPUT) 4.914129)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 7.313901)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 11.165226)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 10.811934)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 7.968129)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 9.715090)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 4.091772)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 4.307152)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 4.937759)
   (= (path-length C-DS INPUT C-BS INPUT) 7.261075)
   (= (path-length C-DS INPUT C-BS OUTPUT) 7.726788)
   (= (path-length C-DS INPUT C-CS1 INPUT) 4.063978)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 5.810939)
   (= (path-length C-DS INPUT C-CS2 INPUT) 4.914130)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 4.307152)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.234201)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.807980)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.642043)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 3.610883)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 5.357843)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 7.313901)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 4.937759)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.234201)
   (= (path-length START INPUT C-BS INPUT) 2.300078)
   (= (path-length START INPUT C-BS OUTPUT) 1.867659)
   (= (path-length START INPUT C-CS1 INPUT) 4.327507)
   (= (path-length START INPUT C-CS1 OUTPUT) 1.430431)
   (= (path-length START INPUT C-CS2 INPUT) 8.549151)
   (= (path-length START INPUT C-CS2 OUTPUT) 9.696329)
   (= (path-length START INPUT C-DS INPUT) 6.611181)
   (= (path-length START INPUT C-DS OUTPUT) 6.687672))

  (:goal (and

    (order-fulfilled o1)  ; Announce 0
    (order-fulfilled o2)  ; Announce 156
    (order-fulfilled o3)  ; Announce 339
    (order-fulfilled o4)  ; Announce 610
    (order-fulfilled o5)  ; Announce 235
    (order-fulfilled o6)  ; Announce 56
    (order-fulfilled o7)  ; Announce 0
    (order-fulfilled o8)  ; Announce 900
  ))
)
