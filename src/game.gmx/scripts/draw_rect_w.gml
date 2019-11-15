///draw_rect_w(x1,y1,x2,y2,w) - draws rectangle with selected width
x1=argument0-argument4/2
y1=argument1-argument4/2
x2=argument2+argument4/2
y2=argument3+argument4/2
w=argument4
draw_line_width(x1,y1,x1,y2,w)
draw_line_width(x1,y1,x2,y1,w)
draw_line_width(x1,y2,x2,y2,w)
draw_line_width(x2,y1,x2,y2,w)
