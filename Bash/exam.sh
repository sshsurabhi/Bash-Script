date=$(date)

sales_info() {
    vehicle_models=("rtx3060" "rtx3070" "rtx3080" "rtx3090" "rx6700")
    for model in "${vehicle_models[@]}";
    do 
    total_sales=$(curl -s "http://0.0.0.0:5000/$model")
    echo "$model:$total_sales"
    done
}
echo $date >> /home/ubuntu/exam_SURABHI/exam_bash/sales.txt
sales_info >> /home/ubuntu/exam_SURABHI/exam_bash/sales.txt


