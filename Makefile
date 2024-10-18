# Name des Hauptbinaries
BIN_NAME := CleanCode
# Cargo-Build Optionen
CARGO_FLAGS := --release

# Standardziel: kompilieren
all: build fmt test

# Kompilieren des Projekts
build:
	cargo build $(CARGO_FLAGS)

# Führen des Hauptprogramms
run: build
	cargo run --bin $(BIN_NAME)

# Testen des gesamten Workspaces
test:
	cargo test $(TEST_FLAGS)

# Formatierung des Codes mit rustfmt
fmt:
	cargo fmt

# Bereinigen des Projekts (löscht das target Verzeichnis)
clean:
	cargo clean

# Kompilieren und Ausführen im Release-Modus
release:
	cargo build --release
	./target/release/$(BIN_NAME)

# Alias für das Standardziel
.PHONY: all build run test fmt clean release
