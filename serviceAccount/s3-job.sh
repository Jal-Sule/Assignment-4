cat <<EoF> jobs3.yaml
apiVersion: batch/v1
kind: Job
metadata:
  name: iam-s3
spec:
  template:
    metadata:
      labels:
        app: iam-s3
    spec:
      serviceAccountName: jalsule
      containers:
      - name: eks-iam-test
        image: amazon/aws-cli:latest
        args: ["s3", "ls"]
      restartPolicy: Never
EoF
