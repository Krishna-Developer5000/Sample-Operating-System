// kernel.c - Tiny OS kernel

void main() {
    char* video_memory = (char*)0xB8000;
    char* message = "Kernel Loaded!";
    int i = 0;

    while (message[i] != '\0') {
        video_memory[i * 2] = message[i];     // Character
        video_memory[i * 2 + 1] = 0x07;       // Light grey on black
        i++;
    }

    while (1); // Infinite loop to prevent return
}
