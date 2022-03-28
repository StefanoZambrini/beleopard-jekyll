function error-check() {
    if [ ! $? -eq 0 ]; then     
        echo "[ERROR]"
        exit 1
    fi
}