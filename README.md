# application_deployment_cic_cd_test_with_AWS
This project has conducted to deploy FastAPI application in AWS using CI/CD pipeline.

### Case 1: Deploying a FastAPI Application Directly on an EC2 Instance

#### Process:
- Launch an EC2 instance.
- Install necessary tools (libs and dependencies) on the EC2 instance.
- Run application directly.

#### Credentials Managment:

- An IAM role can be used to manage temporary credentials for applications that run on an Amazon EC2 instance.
- When using a role, it does not requiure to dstribute long-term credentials (access kyes) to the EC2 instance.
- Instead, the Role supplies temporary permission that application can use when they make calls to other AWS resources.
- IAM role needs to be spcified when launching an EC2 instance.
- The pplication that run on the EC2 instance can then use the role-supplied temporary credntials to sign API requests.


