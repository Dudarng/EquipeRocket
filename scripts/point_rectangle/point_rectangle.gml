function point_in_rectangle(px, py, x1, y1, x2, y2) {
    return (px >= x1 && px <= x2 && py >= y1 && py <= y2);
}