# application_deployment_cic_cd_test_with_AWS
This project has conducted to deploy FastAPI application in AWS using CI/CD pipeline.

## Case 1: Deploying a FastAPI Application Directly on an EC2 Instance

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

## Case 2: Deploy an application on an EC2 instance via CI/CD pipeline

- Create a Docker file or docker-compose file to containerize the application and test for correct funtionality.
- Create a EC2 instance in AWS [more>](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html):
    - Select the EC2 instance application server and OS image, i.e.Amazon Machine Image (AMI) and there are multiple AMI options under each OS type.
    - Select an intance type which meets the computing power, memory, networking, or storage needs.
    - Create/download a Key Pair for SSH access (.pem file). When creating key pair, RSA is by default is recomended for Linux and Windows instances. [more>](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-key-pairs.html)
    - Configure Security Group or Firewall (controls the inbound and outbound traffic): When select a new security group allow follwoing:
        - Allow SSH traffic:
            - To connect via SSH from local machine, use **My IP** (secure).
            - To connect to GitHub actions, use **0.0.0.0/0** (public for any ip to access and is less secure).
        - HTTP (Port 80): Allow the EC2 instance to hosts a web server.
        - HTTPS (Port 443): Allow the EC2 instance for secure web traffic.
    - Configure storage volume for files and scripts.
    - 




