odl_user_267122@udacityhol.onmicrosoft.com
huxz16GFV*yX


(git bash) az login --user odl_user_269459@udacityhol.onmicrosoft.com --password arvf25KEG*T7


(git bash) sh setup-script.sh



az vmss list-instance-connection-info --resource-group cloud-project4  --name udacity-vmss 
ssh -p 50001 udacityadmin@52.163.55.43
ssh -p 50003 udacityadmin@52.163.55.43


--> vào load balancer chỉnh lại load balancer rule (gắn probe pool)

--> vào vmss enable insight sử dụng log ws đã đc tạo sẵn

--create application insight
--azure portal--> monitor --> insight --> virtual machine --> enable VMSS


---VMSS deploy app
cd ~
sudo add-apt-repository ppa:redislabs/redis
sudo apt-get update
sudo apt-get install redis
redis-cli ping


sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.9

sudo apt install python3-pip --upgrade python3-pip
sudo apt install python3.10-venv
python3 -m venv project4
source project4/bin/activate


# test
sudo add-apt-repository -y ppa:redislabs/redis
sudo apt-get update
sudo apt-get install -y redis
redis-cli ping

sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt install -y python3.9

sudo apt install -y python3-pip --upgrade python3-pip
sudo apt install -y python3.10-venv
python3 -m venv project4
source project4/bin/activate

# 

git clone https://github.com/quangtrung99/project4-cloud-dev-udacity
cd project4-cloud-dev-udacity
# git checkout Deploy_to_VMSS
pip install -r requirements.txt
python azure-vote/main.py


git pull
python azure-vote/main.py


--setup auto scale VMSS

--VMSS stress test
sudo apt-get update
sudo apt-get -y install stress
sudo stress --cpu 10 --timeout 420 &
top
sudo pkill stress




--vào log analytic trong application insight tạo chart sử dụng bảng custome event


--automation runbook
tạo automation account
tạo runbook với script có sẵn
vào vmss tạo alert-> tạo action group để gửi mail-> tạo alert rule




--aks

--local
	docker container ls
	docker container ps -a
	docker images
	cd /d D:\udacity\Cloud_Developer_using_Microsoft_Azure\project_4\Cloud_Developer_using_Microsoft_Azure_project_4\azure-vote
	docker-compose up -d --build
	docker-compose down

	# Check if the frontend application is up and running 
	docker exec -it azure-vote-front bash
	ls
	exit
	# Check if the Redis server is running
	docker exec -it azure-vote-back bash
	redis-cli ping
	exit


--cloud

(powershell) while ($true) { curl http://135.237.110.24 }

