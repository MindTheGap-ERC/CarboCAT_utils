function [out] = get_strat_columns(x_positions, y_positions, glob)
    out.x_positions = x_positions;
    out.y_positions = y_positions;    
    for ind = 1:length(x_positions)
        x_pos = x_positions(ind);
        y_pos = y_positions(ind);
        [thickness, facies] = get_strat_column(x_pos, y_pos, glob);
        thicknesses{ind} = thickness;
        facies_collection{ind} = facies;
    end    
    out.thickness = thicknesses;
    out.facies = facies_collection;
end