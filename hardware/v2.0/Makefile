all: build/top build/bottom

build:
	mkdir -p build

build/top.kicad_pcb: Logic_tabor.kicad_pcb build
	kikit separate --source 'annotation; ref: B1; tolerance: 5mm' $< $@

build/bottom.kicad_pcb: Logic_tabor.kicad_pcb build
	kikit separate --source 'annotation; ref: B2; tolerance: 5mm' $< $@

build/top: build/top.kicad_pcb Logic_tabor.kicad_sch
	kikit fab jlcpcb --assembly --schematic Logic_tabor.kicad_sch $< $@

build/bottom: build/bottom.kicad_pcb Logic_tabor.kicad_sch
	kikit fab jlcpcb --assembly --schematic Logic_tabor.kicad_sch $< $@
