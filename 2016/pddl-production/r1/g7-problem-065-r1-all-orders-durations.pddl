(define (problem rcll-production-065-durative)
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
   (order-base-color o1 BASE_RED)
   (at 0 (order-delivery-window-open o1))
   (at 900 (not (order-delivery-window-open o1)))
   (order-cap-color o1 CAP_BLACK)
   (order-gate o1 GATE-3)
   (order-complexity o2 c0)
   (order-base-color o2 BASE_BLACK)
   (at 230 (order-delivery-window-open o2))
   (at 338 (not (order-delivery-window-open o2)))
   (order-cap-color o2 CAP_GREY)
   (order-gate o2 GATE-2)
   (order-complexity o3 c0)
   (order-base-color o3 BASE_RED)
   (at 676 (order-delivery-window-open o3))
   (at 770 (not (order-delivery-window-open o3)))
   (order-cap-color o3 CAP_BLACK)
   (order-gate o3 GATE-2)
   (order-complexity o4 c0)
   (order-base-color o4 BASE_SILVER)
   (at 785 (order-delivery-window-open o4))
   (at 900 (not (order-delivery-window-open o4)))
   (order-cap-color o4 CAP_GREY)
   (order-gate o4 GATE-1)
   (order-complexity o5 c1)
   (order-base-color o5 BASE_SILVER)
   (at 552 (order-delivery-window-open o5))
   (at 658 (not (order-delivery-window-open o5)))
   (order-ring1-color o5 RING_GREEN)
   (order-cap-color o5 CAP_GREY)
   (order-gate o5 GATE-2)
   (order-complexity o6 c2)
   (order-base-color o6 BASE_SILVER)
   (at 660 (order-delivery-window-open o6))
   (at 808 (not (order-delivery-window-open o6)))
   (order-ring1-color o6 RING_GREEN)
   (order-ring2-color o6 RING_BLUE)
   (order-cap-color o6 CAP_BLACK)
   (order-gate o6 GATE-1)
   (order-complexity o7 c3)
   (order-base-color o7 BASE_BLACK)
   (at 642 (order-delivery-window-open o7))
   (at 814 (not (order-delivery-window-open o7)))
   (order-ring1-color o7 RING_BLUE)
   (order-ring2-color o7 RING_YELLOW)
   (order-ring3-color o7 RING_GREEN)
   (order-cap-color o7 CAP_GREY)
   (order-gate o7 GATE-1)
   (order-complexity o8 c0)
   (order-base-color o8 BASE_SILVER)
   (at 900 (order-delivery-window-open o8))
   (at 1200 (not (order-delivery-window-open o8)))
   (order-cap-color o8 CAP_BLACK)
   (order-gate o8 GATE-2)



   (= (path-length C-BS INPUT C-BS OUTPUT) 2.754222)
   (= (path-length C-BS INPUT C-CS1 INPUT) 2.845829)
   (= (path-length C-BS INPUT C-CS1 OUTPUT) 3.185090)
   (= (path-length C-BS INPUT C-CS2 INPUT) 11.380962)
   (= (path-length C-BS INPUT C-CS2 OUTPUT) 10.627372)
   (= (path-length C-BS INPUT C-DS INPUT) 8.581706)
   (= (path-length C-BS INPUT C-DS OUTPUT) 6.933389)
   (= (path-length C-BS OUTPUT C-BS INPUT) 2.754222)
   (= (path-length C-BS OUTPUT C-CS1 INPUT) 2.761175)
   (= (path-length C-BS OUTPUT C-CS1 OUTPUT) 2.366431)
   (= (path-length C-BS OUTPUT C-CS2 INPUT) 11.296309)
   (= (path-length C-BS OUTPUT C-CS2 OUTPUT) 10.542718)
   (= (path-length C-BS OUTPUT C-DS INPUT) 8.411459)
   (= (path-length C-BS OUTPUT C-DS OUTPUT) 6.114730)
   (= (path-length C-CS1 INPUT C-BS INPUT) 2.845829)
   (= (path-length C-CS1 INPUT C-BS OUTPUT) 2.761175)
   (= (path-length C-CS1 INPUT C-CS1 OUTPUT) 2.874857)
   (= (path-length C-CS1 INPUT C-CS2 INPUT) 8.698174)
   (= (path-length C-CS1 INPUT C-CS2 OUTPUT) 7.944583)
   (= (path-length C-CS1 INPUT C-DS INPUT) 5.898917)
   (= (path-length C-CS1 INPUT C-DS OUTPUT) 5.556449)
   (= (path-length C-CS1 OUTPUT C-BS INPUT) 3.185090)
   (= (path-length C-CS1 OUTPUT C-BS OUTPUT) 2.366431)
   (= (path-length C-CS1 OUTPUT C-CS1 INPUT) 2.874857)
   (= (path-length C-CS1 OUTPUT C-CS2 INPUT) 11.409991)
   (= (path-length C-CS1 OUTPUT C-CS2 OUTPUT) 10.656401)
   (= (path-length C-CS1 OUTPUT C-DS INPUT) 6.428626)
   (= (path-length C-CS1 OUTPUT C-DS OUTPUT) 4.131897)
   (= (path-length C-CS2 INPUT C-BS INPUT) 11.380963)
   (= (path-length C-CS2 INPUT C-BS OUTPUT) 11.296309)
   (= (path-length C-CS2 INPUT C-CS1 INPUT) 8.698174)
   (= (path-length C-CS2 INPUT C-CS1 OUTPUT) 11.409992)
   (= (path-length C-CS2 INPUT C-CS2 OUTPUT) 2.715770)
   (= (path-length C-CS2 INPUT C-DS INPUT) 7.905677)
   (= (path-length C-CS2 INPUT C-DS OUTPUT) 9.121058)
   (= (path-length C-CS2 OUTPUT C-BS INPUT) 10.627372)
   (= (path-length C-CS2 OUTPUT C-BS OUTPUT) 10.542717)
   (= (path-length C-CS2 OUTPUT C-CS1 INPUT) 7.944583)
   (= (path-length C-CS2 OUTPUT C-CS1 OUTPUT) 10.656401)
   (= (path-length C-CS2 OUTPUT C-CS2 INPUT) 2.715770)
   (= (path-length C-CS2 OUTPUT C-DS INPUT) 6.384327)
   (= (path-length C-CS2 OUTPUT C-DS OUTPUT) 7.599708)
   (= (path-length C-DS INPUT C-BS INPUT) 8.581705)
   (= (path-length C-DS INPUT C-BS OUTPUT) 8.411458)
   (= (path-length C-DS INPUT C-CS1 INPUT) 5.898917)
   (= (path-length C-DS INPUT C-CS1 OUTPUT) 6.428626)
   (= (path-length C-DS INPUT C-CS2 INPUT) 7.905678)
   (= (path-length C-DS INPUT C-CS2 OUTPUT) 6.384327)
   (= (path-length C-DS INPUT C-DS OUTPUT) 3.115038)
   (= (path-length C-DS OUTPUT C-BS INPUT) 6.933389)
   (= (path-length C-DS OUTPUT C-BS OUTPUT) 6.114730)
   (= (path-length C-DS OUTPUT C-CS1 INPUT) 5.556449)
   (= (path-length C-DS OUTPUT C-CS1 OUTPUT) 4.131897)
   (= (path-length C-DS OUTPUT C-CS2 INPUT) 9.121058)
   (= (path-length C-DS OUTPUT C-CS2 OUTPUT) 7.599708)
   (= (path-length C-DS OUTPUT C-DS INPUT) 3.115037)
   (= (path-length START INPUT C-BS INPUT) 1.557397)
   (= (path-length START INPUT C-BS OUTPUT) 2.282733)
   (= (path-length START INPUT C-CS1 INPUT) 2.057155)
   (= (path-length START INPUT C-CS1 OUTPUT) 2.396416)
   (= (path-length START INPUT C-CS2 INPUT) 9.926924)
   (= (path-length START INPUT C-CS2 OUTPUT) 9.173333)
   (= (path-length START INPUT C-DS INPUT) 7.127668)
   (= (path-length START INPUT C-DS OUTPUT) 6.144715))

(:goal (and    (order-fulfilled o7)  ; Announce 0
)))