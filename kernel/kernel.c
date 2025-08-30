// kernel.c - Tiny OS kernel

void main() {
    char* video_memory = (char*)0xB8000;
    video_memory[0] = 'K';   // Character to display
    video_memory[1] = 0x07;  // Light grey on black

    while (1); // Infinite loop to prevent return
}
