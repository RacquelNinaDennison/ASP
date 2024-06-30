#const n=10. 
#const h=10. 
init(brightness(bulb(1..10),3)). 
occurs(pull(I),I-1) :- I = 1..10.
