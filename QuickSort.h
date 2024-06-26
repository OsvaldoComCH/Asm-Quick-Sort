#ifndef QUICK_SORT
#define QUICK_SORT

void Sort(int * A, int Start, int End)
{
    if(Start >= End){return;}
    int Pivot = A[End];
    int x = Start;
  
    for(int y = Start; y <= End; ++y)
    {
        if(A[y]<Pivot)
        {
            int Temp = A[x];
            A[x] = A[y];
            A[y] = Temp;
            ++x;
        }
    }
    int Temp = A[x];
    A[x] = A[End];
    A[End] = Temp;

    Sort(A, Start, x - 1);
    Sort(A, x + 1, End);
}

#endif