
;; load rclib
uses rclib
uses rc_mousepic


rc_kill_window_object(w0);
vars w0 = rc_new_window_object(500,20,300,250,{0 0 1 1},'w0');
'W0' -> rc_window_title(w0);
;; set w0 to current window
w0 -> rc_current_window_object;
rc_current_window_object =>



;;
;;showlib rc_window_object

;;; Declare a variable called win1 and give it a window
vars win1 =rc_new_window_object(600, 10, 800, 800, true, 'WIN1');

;;As in LOGO, this Pop-11 loop instruction will draw a square. repeat 4 times rc_draw(100); rc_turn(90); endrepeat; We can turn that into a definition of a re-usable procedure.

;; definitions need to start on left hand side of editor - cannot start define in middle of line
;; otherwise

define rc_square(side);
        repeat 4 times rc_draw(side); rc_turn(90); endrepeat;
enddefine;

rc_square =>


;;This will draw 12 squares differing in orientation by 30 degrees, with a common corner.

    repeat 12 times rc_square(100); rc_turn(30); endrepeat;

    repeat 1000 times rc_square(random(1000)); rc_turn(random(30)); endrepeat;

define stars;
    rc_clear_window_object(win1);
    repeat 150 times
      repeat 100 times rc_square(random(1000));
                       rc_turn(random(30));
      endrepeat;
    endrepeat;
enddefine;


stars=>
stars();


;;To show them being drawn individually, insert a delay: 50 hundredths of a second = half a second.

    rc_clear_window_object(win1);
    repeat 12 times rc_square(100); rc_turn(30); syssleep(50); endrepeat;
    repeat 500 times rc_square(200); rc_turn(15.32); syssleep(50); endrepeat;

;;Drawing faces using RCLIB
;;The SimAgent package includes a library for drawing a few simple types of face. It can be loaded thus:
    uses newkit
    uses sim_faces
;;It can then be used to draw nine different faces thus:
    ;;; create a window called 'WIN1' with top left corner at location
    ;;; (600,10) on the screen, and size 600x600 pixels.
    ;;; Assign the new window to the variable win1.

    vars win1 =rc_new_window_object(600, 10, 600, 600, true, 'WIN1');

    ;;; Now draw nine faces in three rows and three columns:

    happy_face(-200, 200, 80, 'red', 20, 35, 50, 'blue', 'pink');

    happy_face(0, 200, 60, 'orange', 22, 20, 55, 'blue', 'white');

    sad_face(200, 200, 75, 'black', 30, 25, 40, 'white', 'white');

    sad_face(-200, 0, 75, 'black', 30, 25, 60, 'white', 'yellow');

    frustrated_face(0, 0, 86, 'blue', 30, 30, 70, 'grey70', 'grey40');

    frustrated_face(200, 0, 90, 'blue', 35, 35, 76, 'pink', 'yellow');

    neutral_face(-200, -200, 100, 'green', 38, 45, 80, 'blue', 'red');

    neutral_face(0, -200, 95, 'gray', 35, 45, 90, 'white', 'black');

    surprised_face(200, -200, 90, 'orange', 32, 35, 75, 'grey', 'white');
