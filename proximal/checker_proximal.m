function [score] = checker_proximal()
    PROXIMAL_points = 30;

    [PROXIMAL_4point, PROXIMAL_4point_max] = test("checker_props/checker_proximal_4points");
    printf("Interpolate 4 points: %d / %d teste trecute.\n", PROXIMAL_4point, PROXIMAL_4point_max);
    
    [PROXIMAL_resize, PROXIMAL_resize_max] = test("checker_props/checker_proximal_resize");
    printf("Resize image: %d / %d teste trecute.\n", PROXIMAL_resize, PROXIMAL_resize_max);
    
    [PROXIMAL_4point_RGB, PROXIMAL_4point_RGB_max] = test("checker_props/checker_proximal_4points_RGB");
    printf("Interpolate 4 points RGB: %d / %d teste trecute.\n", PROXIMAL_4point_RGB, PROXIMAL_4point_RGB_max);
    
    [proximal_resize_RGB, proximal_resize_RGB_max] = test("checker_props/checker-proximal_resize_RGB");
    printf("Resize RGB image: %d / %d teste trecute.\n", proximal_resize_RGB, proximal_resize_RGB_max);

    [rotate, rotate_max] = test("checker_props/checker_proximal_rotate");
    printf("Rotate image: %d / %d teste trecute.\n", rotate, rotate_max);
    
    [rotate_RGB, rotate_RGB_max] = test("checker_props/checker_proximal_rotate_RGB");
    printf("Rotate RGB image: %d / %d teste trecute.\n", rotate_RGB, rotate_RGB_max);
    
    score = PROXIMAL_points * (PROXIMAL_4point / PROXIMAL_4point_max / 5 + PROXIMAL_resize / PROXIMAL_resize_max / 5 +
                         PROXIMAL_4point_RGB / PROXIMAL_4point_RGB_max / 5 + proximal_resize_RGB / proximal_resize_RGB_max / 5 +
                         rotate / rotate_max / 10 + rotate_RGB / rotate_RGB_max / 10);
    printf("Punctaj total: %.2f\n", score);
    
    fout = fopen("results", "w");
    fprintf(fout, "%.2f", score);
    fclose(fout);
endfunction
