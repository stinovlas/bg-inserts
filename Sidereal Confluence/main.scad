/*
 * Game box inner dimensions: [145, 92, 48]
 *
 * Small cards: [87.5, 62.5, 20]
 * All big cards + rules: [145, 92, 11]
 */
// clang-format off
include<../lib/boxes.scad>;
include<../lib/trays.scad>;
// clang-format on

$fa = 1;
$fs = 0.4;
WALL_WIDTH = 0.86;
// WALL_WIDTH = 1.26;
BOTTOM_HEIGHT = 1.2;
STACK_HEIGHT = 1.7;
STACK_LEEWAY = 0.2;
RADIUS = 3.0;

// total
// h = 46 l=260 w=55/60

module BigCubeBox() {
    // h=27 w=59 l=70
    StackableRoundBox([ 70, 60, 27 ]);
}

module SmallCubeBox() {
    // h=18 w=55 l=55
    StackableRoundBox([ 55, 55, 18 ]);
    // RoundTray([ 55, 55, 6 ], slopes = 4, angle = 35);
    // RoundTray([ 55, 165, 6 ], slopes = 2, angle = 30, dividers = [ [ 165 / 3, 165 * 2 / 3 ], [] ], bottom_height = 1.0);
}

//SmallCubeBox();
BigCubeBox();

// /* Small card box */
// module CardBox() {
//     difference() {
//         RoundBox([ 92, 66, 23.8 ]);
//         translate([ (92 - 35) / 2, WALL_WIDTH, -1 ]) cube([ 35, 66 - 2 * WALL_WIDTH, BOTTOM_HEIGHT + 2 ]);
//     }
// }
// /* Player pieces box (x4) */
// module PlayerBox() { StackableRoundBox([ 92 / 2, 145 / 2, 15 ]); }
//
// module TokenTrayWithDivider() {
//     module TokenTray() { StackableRoundBox([ 92, 145 - 66, 12.5 ]); }
//
//     TokenTray();
//     // divider
//     translate([ 5, 0, 0 ]) difference() {
//         translate([ (92 - WALL_WIDTH) / 2, 0, 0 ]) cube([ WALL_WIDTH, 145 - 66, 11 ]);
//         difference() {
//             translate([ -1, -1, -1 ]) cube([ 92 + 2, 145 - 66 + 2, 11 + 2 ]);
//             StackableRoundCube(
//                 [ 92, 145 - 66, 11 ], [ 92 - 2 * WALL_WIDTH - 0.4, 145 - 66 - 2 * WALL_WIDTH - 0.4, 2.5 ]
//             );
//         }
//     }
// }
