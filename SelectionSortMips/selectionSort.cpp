int main(){
    int array[10] = {2, 10, 6, 8, 4, 5, 1, 4, 10, 9};

    for (int i = 0; i < 10; i++) {
        int min = 1000;
        int minIndex = 0;
        for (int j = i; j < 10; j++){
            if (array[j] < min) {
                min = array[j];
                minIndex = j;
            }
        }
        int temp = array[i];
        array[i] = array[minIndex];
        array[minIndex] = temp;
    }

}
