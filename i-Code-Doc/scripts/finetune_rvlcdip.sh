CUDA_VISIBLE_DEVICES=0,1,2,3 PYTHONPATH='.' python run_rvlcdip.py \
--data_dir "./dataset/rvl-cdip" \
--max_seq_length 1024 \
--image_size 224 \
--max_seq_length_decoder 16 \
--max_steps 100000 \
--do_train \
--do_eval \
--do_predict \
--model_name_or_path "t5-large" \
--model_type "UdopUnimodel" \
--output_dir "./finetune_rvlcdip" \
--gradient_accumulation_steps 8 \
--dataloader_num_workers 8 \
--overwrite_output_dir true \
--per_device_train_batch_size 4 \
--save_steps 5000 \
--learning_rate 5e-5 \
--warmup_ratio 0.001 \
--weight_decay 0.001
# --fp16 \
# --half_precision_backend "auto" \
# --fp16_opt_level "O2"
