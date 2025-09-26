SECTIONS {
    bar : ALIGN(8) {
        start_bar = .;
        KEEP(*(.data.foo .data.baz*));
        start_aaa = .;
        KEEP(*(.data.aaa));
        /* PROVIDE(_test_provide_unreferenced = .); */
        PROVIDE(_test_provide_referenced = .);
        /* TODO PROVIDE(_test_provide_defined = .); */
        end_bar = .;
    }
}
