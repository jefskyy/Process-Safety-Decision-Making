%MatLab Script to organize rate-rank scores
%Rowan University - College of Engineering - ExEEd Dept.

%Instructions for use
    %The .xlsx should have columns for considerations, ranks, and 0's
    %filling the 4 "Rated Higher than..." area. This is important.			
    %Open .m in same folder as the .xlsx
    %Open the .xlsx from the "Current Folder" menu
    %Select the rate, rank, and 0's data. Import as a numeric matrix.
    %Blanks should be set to import as '0' not NaN.
    %Update the 'dimy' and 'dimx' variable values to match the dim of the
    %imported matrix. Update the name of the imported/export matrix.
    %Currently it is named 'import' in this script
    %Run the script. Open the export matrix through the "Workspace" menu.
    %Copy/paste the last 4 coulmns over the 0's in the .xlsx. 
    %Repeat for each dilemma. Enjoy not sorting 5400 items by hand. :)


%%%%SET-UP
%dims should match those of the imprted matrix
dimy = 279;             %The number of students being observed
dimx = 20;              %Number of considerations +8
UC = zeros(dimy,dimx);  %Consideration usage check
ratemax = dimx - 8;     %Looking at matrix dims is easier than remember the consideration #
                        %8 represents the 4 ranks+4 columns of 0's
S=1;                    %Initial student row

while S<=dimy
    N = 0;              %Rank counter

    while N<4           %Checks through the top 4 ranked items
            RR=0;       %Reset raterank errors
            raten = 0;  %Rate counter 
        rankn = import(S,ratemax+N+1); %Rank_n that we look at
        if rankn==0     %Perform break since no clumn 0. May need to check this data
            break;
        end
        rankvn = import(S,rankn);      %Value of Rank_n
        GI = 0; EI = 0;                 %Sets incident counters to zero
        
        while raten<ratemax             %Look through all considerations
            
            ratevn = import(S,raten+1);
            
            %Considerations rated higher than the consideration you ranked 
            %except those which you ranked prior
            if ratevn>rankvn && UC(S,raten+1)==0
                GI = GI +1;%greater incidents
            end
            
            
            %You are reusing a consideration
            if UC(S,rankn)==1 && rankvn==raten+1
                EI = EI +1;%error incidents
            end
            
            
            %If you rank a consideration which is not in the dilemma            
            if rankvn>ratemax 
                EI = EI + (ratemax - rankn + 1);
                %all considerations are errors except those which proceed that entry (includes that entry)
            end
            raten = raten +1;       %Rate counter
        end
        
        
        %sets 'usage-check' to used for ranked item
        if rankn~=0 && rankn<ratemax+1
            UC(S,rankn)=1;
        end
        RR = 0 + EI + GI;           %rate-rank score 0 plus incident counts
        import(S,ratemax+5+N)=RR;  %Sets incident counter
        N = N +1;                   %Rank counter
    end
    S = S +1;                       %Progress to next row/student
end
MatLab="Hey Jeff, I finished!"

%Contact Jeffrey Stransky with any questions
%           609-257-8505
%           stranskyj6@students.rowan.edu
%           stransky.jeffrey@gmail.com