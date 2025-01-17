files="BatchNormalization.ipynb
FullyConnectedNets.ipynb
PyTorch.ipynb
TensorFlow.ipynb"

for file in $files
do
    if [ ! -f $file ]; then
        echo "Required notebook $file not found."
        exit 0
    fi
done

rm -f assignment2_part1.zip
zip -r assignment2_part1.zip . -x "*.git*" "*cs682/datasets*" "*.ipynb_checkpoints*" "*README.md" "*collectSubmission.sh" "*requirements.txt" ".env/*" "*.pyc" "*cs682/build/*"
