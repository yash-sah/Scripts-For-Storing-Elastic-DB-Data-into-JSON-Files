declare -a arr=("accu_batch" "bulktest" "cdb_cosmos_jobs" "cdb_nice_jobs" "cdb_tops_jobs" "clmreccnt_job_1" "clmreccnt_job_2" "clmreccnt_job_3" "clmreccnt_job_4" "clmreccnt_job_5" "clmreccnt_job_6" "clmreccnt_job_7" "clmreccnt_job_8" "dummy_index" "enron" "es_hats" "go_logger" "h2s_scenario_job_1" "h2s_scenario_job_2" "h2s_scenario_job_3" "h2s_scenario_job_4" "h2s_scenario_job_5" "has_feeds"   "heelo" "imdm_metrics" "kafka_dq1" "kafka_sink" "kafka_sink_2" "kafka_t1" "kafka_test" "kafka_test1" "my_job2" "nice_cdb_member_coverage_job" "nicememberffs_job" "rally_icue_exploded_job" "rally_icue_mid_filter_job" "rally_icue_out_job" "rank_api_lookup" "rank_api_lookup1" "rank_api_lookup2" "rank_api_lookup_1" "rank_api_lookup_2" "rank_api_lookup_3" "rank_api_lookup_4" "rank_api_lookup_ehnance1" "rank_api_lookup_enhance" "rank_api_lookup_ffs" "rank_api_lookup_ffs1" "rank_api_lookup_ffs2" "rank_api_lookup_status" "rank_api_report_ffs" "sample_sink" "sample_sink_2" "sarada" "sarada_test" "saradaprasad" "some_index" "streaming_app" "test" "testaccuracy" "tracking")

for i in "${arr[@]}"
do

echo $i
CURL -XPOST 'http://elr6hz1-03-s23.uhc.com:31195/'$i'/_search?scroll=10m' | jq . > $i.json
echo "Success"

done
