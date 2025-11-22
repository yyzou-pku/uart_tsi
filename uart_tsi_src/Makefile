
default: uart_tsi

SRCS = $(addprefix ../csrc/,testchip_tsi.cc testchip_htif.cc)

uart_tsi: testchip_uart_tsi.cc $(SRCS)
	g++ -O3 -I ../csrc -I ../riscv-fesvr -std=c++17 -o $@ $^ ../riscv-fesvr/build/libfesvr.a -lpthread

clean:
	rm -rf uart_tsi
