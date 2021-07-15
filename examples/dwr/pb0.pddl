(define (problem pb1)
  (:domain dwr)
  (:objects
    r1 - robot
    l1 - location
    k1 - crane
    p1 q1 - pile
    ca cb pallet - container
  )
  (:init
    (attached p1 l1) (attached q1 l1)
    (belong k1 l1)
    (in ca p1) (in cb p1)
    (top cb p1) (on cb ca) (on ca pallet)
    (top pallet q1)
    (at r1 l1)
    (unloaded r1)
    (occupied l1)
    (empty k1)
    (equal ca ca) (equal cb cb) (equal pallet pallet)
  )
  ; the task is to move all containers to location l2
  ; ca and cc in pile p2, cc in q2
  (:goal (and (in ca q1) (in cb q1)))
)