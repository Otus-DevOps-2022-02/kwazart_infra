# kwazart_infra
kwazart Infra repository

<h2>Самостоятельное задание</h2>
<b>
Исследовать способ подключения к <code>someinternalhost</code> в одну
команду из вашего рабочего устройства, проверить работоспособность
найденного решения и внести его в README.md в вашем репозитории
</b>
<p>
bastion_IP = 130.193.49.132<br>
someinternalhost_IP = 10.128.0.4<br>
ssh -J appuser@130.193.49.132 appuser@10.128.0.4<br>
</p>


<h3>Дополнительное задание:</h3>
<b>
Предложить вариант решения для подключения из консоли при помощи
команды вида <code>ssh someinternalhost</code> из локальной консоли рабочего
устройства, чтобы подключение выполнялось по алиасу
<code>someinternalhost</code> и внести его в README.md в вашем репозитории
</b>
<p>
echo 'alias someinternalhost="ssh -J appuser@130.193.49.132 appuser@10.128.0.4"' >> ~/.bashrc <br>
source ~/.bashrc <br>
</p>


<h3>ДЗ №4 (23.03.2022)</h3>
<p>
Данные для проверки:<br>
testapp_IP = 51.250.5.10<br>
testapp_port = 9292<br>
</p>

<h4>Скрипт запуска VM</h4>
<code>
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/appuser.pub \
  --zone ru-central1-a \
  --metadata-from-file=./setup.sh
</code>
