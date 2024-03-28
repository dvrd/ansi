package ansi

import "core:fmt"

FG_CYAN :: "\x1B[36m"
FG_WHITE :: "\x1B[37m"

BG_BLACK :: "\x1B[40m"
BG_RED :: "\x1B[41m"
BG_GREEN :: "\x1B[42m"
BG_YELLOW :: "\x1B[43m"
BG_BLUE :: "\x1B[44m"
BG_MAGENTA :: "\x1B[45m"
BG_CYAN :: "\x1B[46m"
BG_WHITE :: "\x1B[47m"

BLUE :: "\x1B[38;2;0;0;210m"
YELLOW :: "\x1B[38;2;255;210;0m"

bold :: proc(str: string) -> string {
	return strings.concatenate({BOLD, str, END})
}

underline :: proc(str: string) -> string {
	return strings.concatenate({UNDERLINE, str, END})
}

colorize :: proc(str: string, color: [3]u8) -> string {
	color := fmt.tprintf("\x1B[38;2;%d;%d;%dm", color.r, color.g, color.b)
	return strings.concatenate({color, str, END})
}
