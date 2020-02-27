ASM_DIR = asm
VM_DIR = vm

ASM = $(ASM_DIR)/asm
VM = $(VM_DIR)/corewar_vm

.PHONY: all clean fclean re

all: $(ASM) $(VM)

$(ASM):
	@make -C $(ASM_DIR)

$(VM):
	@make -C $(VM_DIR)

clean:
	@make -C $(ASM_DIR) clean
	@make -C $(VM_DIR) clean

fclean:
	@make -C $(ASM_DIR) fclean
	@make -C $(VM_DIR) fclean

re: fclean all
