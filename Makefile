all: $(NAME).mb

$(NAME).s: $(NAME).c
	arm-none-eabi-gcc -S $(NAME).c

$(NAME).o: $(NAME).s
	arm-none-eabi-as -o $(NAME).o $(NAME).s

$(NAME).out: $(NAME).o
	arm-none-eabi-ld -Ttext 0x02000000 -o $(NAME).out $(NAME).o

$(NAME).mb: $(NAME).out
	arm-none-eabi-objcopy -O binary $(NAME).out $(NAME).mb

clean:
	rm -f *.o *.s *.out 

