# 💸 AWS Machine Learning Cost Optimization

This section of my repository documents all the **cost-saving strategies** I’ve implemented while building machine learning models on AWS. In real-world production environments, cost-efficiency is just as important as model accuracy and scalability.

> ⚠️ Cloud bills can quickly spiral out of control when ML models are trained and deployed inefficiently. This section outlines how to prevent that.

---

## 🧠 Why Cost Optimization Matters

- ML workloads are compute- and storage-intensive
- Training deep models on GPUs or CPUs for large datasets can be very expensive
- Long-running endpoints or idle notebooks can waste money
- AWS provides powerful tools to **optimize costs without compromising performance**

---

## 🧰 Key Cost Optimization Techniques Implemented

| Technique | Description | Savings Potential |
|----------|-------------|-------------------|
| **Spot Instances for Training** | Uses spare EC2 capacity at a discount. Managed by SageMaker. | Up to 90% |
| **Inf1 Instances (Inferentia)** | Optimized for inference, cheaper than GPU-based endpoints. | Up to 75% |
| **Multi-Model Endpoints** | Host multiple models on a single SageMaker endpoint. | 50–80% on deployment |
| **Model Compilation with Neo** | Compiles models to run faster on smaller instances. | Lower instance cost |
| **Notebook Lifecycle Configs** | Automatically shuts down idle Studio notebooks. | Prevents billing waste |
| **Model Monitor with Alerts** | Avoids cost of inaccurate models being used in production. | Saves by triggering retraining only when needed |
| **Data Lifecycle Policies (S3)** | Auto-archive unused data to Glacier storage. | Reduces storage costs |

---

## 🧪 Real Examples from My Projects

### 1. ✅ Spot Training on SageMaker

- Enabled `train_use_spot_instances=True` in training config
- Set `max_wait_time` to limit billable time
- Saw ~60–70% drop in training costs

```python
from sagemaker.estimator import Estimator

xgb_estimator = Estimator(
    image_uri='...', 
    role='...', 
    instance_count=1,
    instance_type='ml.m5.large',
    use_spot_instances=True,
    max_wait=3600,
    max_run=1800
)

predictor = model.deploy(
    initial_instance_count=1,
    instance_type='ml.inf1.xlarge'
)

MultiDataModel(
    name='house-price-models',
    model_data_prefix='s3://my-bucket/models/',
    image_uri='...',
    role=role
)

compiled_model = estimator.compile_model(
    target_instance_family='ml_c5',
    input_shape={'features': [len(features)]},
    output_path='s3://my-bucket/compiled/'
)

