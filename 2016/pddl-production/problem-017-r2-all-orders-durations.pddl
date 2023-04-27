(define (problem rcll-production-017-durative)
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
   (order-gate o1 GATE-1)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_BLACK)
   (at 352 (order-delivery-window-open o2))
   (at 470 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_SILVER)
   (at 626 (order-delivery-window-open o3))
   (at 704 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_GREY)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 746 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-3)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 566 (order-delivery-window-open o5))
   (at 710 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_ORANGE)
   (order-cap-color o5 CAP_BLACK)
   (order-gate o5 GATE-3)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 684 (order-delivery-window-open o6))
   (at 830 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_ORANGE)
   (order-ring2-color o6 RING_BLUE)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-1)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_SILVER)
   (at 685 (order-delivery-window-open o7))
   (at 808 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_GREEN)
   (order-ring3-color o7 RING_ORANGE)
   (order-cap-color o7 CAP_GREY)
   (order-gate o7 GATE-1)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_BLACK)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-3)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.824922)
   (= (path-length C-BS INPUT C-CS1 INPUT) 7.501342)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 9.197965)
   (= (path-length C-BS INPUT C-CS2 INPUT) 3.545516)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 4.911906)
   (= (path-length C-BS INPUT C-DS INPUT) 7.319965)
   (= (path-length C-BS INPUT C-DS OUTPUT) 5.900306)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.824921)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 9.454337)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 11.245255)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 1.817766)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 4.125748)
   (= (path-length C-BS OUTPUT C-DS INPUT) 7.444592)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.024933)
   (= (path-length C-CS1 INPUT C-BS INPUT) 7.501342)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 9.454337)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 3.929160)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 9.379865)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 8.823807)
   (= (path-length C-CS1 INPUT C-DS INPUT) 4.460604)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 6.907944)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 9.197964)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 11.245257)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 3.929160)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 11.170785)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 11.271725)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 6.908522)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 9.355861)
   (= (path-length C-CS2 INPUT C-BS INPUT) 3.545516)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 1.817766)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 9.379866)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 11.170785)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 4.051277)
   (= (path-length C-CS2 INPUT C-DS INPUT) 7.370121)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 5.950463)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 4.911906)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 4.125748)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 8.823807)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 11.271725)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 4.051277)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 6.176570)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 3.383086)
   (= (path-length C-DS INPUT C-BS INPUT) 7.319965)
   (= (path-length C-DS INPUT C-BS OUTPUT) 7.444593)
   (= (path-length C-DS INPUT C-CS1 INPUT) 4.460604)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 6.908522)
   (= (path-length C-DS INPUT C-CS2 INPUT) 7.370122)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 6.176570)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.087267)
   (= (path-length C-DS OUTPUT C-BS INPUT) 5.900306)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.024934)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 6.907943)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 9.355862)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 5.950463)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 3.383086)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.087266)
   (= (path-length START INPUT C-BS INPUT) 1.389061)
   (= (path-length START INPUT C-BS OUTPUT) 3.436353)
   (= (path-length START INPUT C-CS1 INPUT) 6.860244)
   (= (path-length START INPUT C-CS1 OUTPUT) 8.556867)
   (= (path-length START INPUT C-CS2 INPUT) 3.361882)
   (= (path-length START INPUT C-CS2 OUTPUT) 4.728271)
   (= (path-length START INPUT C-DS INPUT) 6.790832)
   (= (path-length START INPUT C-DS OUTPUT) 5.716672))

  (:goal (and

    (order-fulfilled o1)  ; Announce 0
    (order-fulfilled o2)  ; Announce 126
    (order-fulfilled o3)  ; Announce 450
    (order-fulfilled o4)  ; Announce 563
    (order-fulfilled o5)  ; Announce 136
    (order-fulfilled o6)  ; Announce 67
    (order-fulfilled o7)  ; Announce 0
    (order-fulfilled o8)  ; Announce 900
  ))
)
