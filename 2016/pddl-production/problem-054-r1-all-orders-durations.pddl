(define (problem rcll-production-054-durative)
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
   (order-base-color o2 BASE_SILVER)
   (at 252 (order-delivery-window-open o2))
   (at 385 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_BLACK)
   (order-gate o2 GATE-3)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_BLACK)
   (at 521 (order-delivery-window-open o3))
   (at 598 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-3)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_RED)
   (at 702 (order-delivery-window-open o4))
   (at 819 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_BLACK)
   (order-gate o4 GATE-2)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_BLACK)
   (at 651 (order-delivery-window-open o5))
   (at 749 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_ORANGE)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-3)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_RED)
   (at 698 (order-delivery-window-open o6))
   (at 823 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_BLUE)
   (order-cap-color o6 CAP_GREY)
   (order-gate o6 GATE-2)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_RED)
   (at 638 (order-delivery-window-open o7))
   (at 776 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_GREEN)
   (order-ring3-color o7 RING_ORANGE)
   (order-cap-color o7 CAP_BLACK)
   (order-gate o7 GATE-2)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_BLACK)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_GREY)
   (order-gate o8 GATE-2)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.658599)
   (= (path-length C-BS INPUT C-CS1 INPUT) 9.130367)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 10.288121)
   (= (path-length C-BS INPUT C-CS2 INPUT) 1.445710)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 2.204099)
   (= (path-length C-BS INPUT C-DS INPUT) 6.191095)
   (= (path-length C-BS INPUT C-DS OUTPUT) 5.689696)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.658599)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 11.092799)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 12.250553)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 3.408142)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 3.427511)
   (= (path-length C-BS OUTPUT C-DS INPUT) 7.619381)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 7.117981)
   (= (path-length C-CS1 INPUT C-BS INPUT) 9.130367)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 11.092798)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.629653)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 8.040197)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 8.164122)
   (= (path-length C-CS1 INPUT C-DS INPUT) 7.199856)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 6.971297)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 10.288121)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 12.250553)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.629653)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 9.197950)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 9.321873)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 8.313614)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 8.085054)
   (= (path-length C-CS2 INPUT C-BS INPUT) 1.445710)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 3.408142)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 8.040195)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 9.197949)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 2.953642)
   (= (path-length C-CS2 INPUT C-DS INPUT) 6.798945)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 6.123687)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 2.204099)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 3.427512)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 8.164120)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 9.321874)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 2.953642)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 7.497452)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 6.772578)
   (= (path-length C-DS INPUT C-BS INPUT) 6.191095)
   (= (path-length C-DS INPUT C-BS OUTPUT) 7.619382)
   (= (path-length C-DS INPUT C-CS1 INPUT) 7.199856)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 8.313613)
   (= (path-length C-DS INPUT C-CS2 INPUT) 6.798945)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 7.497453)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.249132)
   (= (path-length C-DS OUTPUT C-BS INPUT) 5.689696)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 7.117982)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 6.971297)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 8.085054)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 6.123687)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 6.772579)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.249132)
   (= (path-length START INPUT C-BS INPUT) 1.128399)
   (= (path-length START INPUT C-BS OUTPUT) 2.351811)
   (= (path-length START INPUT C-CS1 INPUT) 8.887263)
   (= (path-length START INPUT C-CS1 OUTPUT) 10.045017)
   (= (path-length START INPUT C-CS2 INPUT) 1.877942)
   (= (path-length START INPUT C-CS2 OUTPUT) 1.157448)
   (= (path-length START INPUT C-DS INPUT) 6.941235)
   (= (path-length START INPUT C-DS OUTPUT) 6.439835))

  (:goal (and

    (order-fulfilled o1)  ; Announce 0
    (order-fulfilled o2)  ; Announce 32
    (order-fulfilled o3)  ; Announce 295
    (order-fulfilled o4)  ; Announce 529
    (order-fulfilled o5)  ; Announce 191
    (order-fulfilled o6)  ; Announce 164
    (order-fulfilled o7)  ; Announce 0
    (order-fulfilled o8)  ; Announce 900
  ))
)
