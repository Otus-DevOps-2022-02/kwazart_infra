# kwazart_infra
kwazart Infra repository

<h2>Самостоятельное задание</h2>
<b>
Исследовать способ подключения к <code>someinternalhost</code> в одну
команду из вашего рабочего устройства, проверить работоспособность
найденного решения и внести его в README.md в вашем репозитории
</b>
<p>
bastion_IP = 130.193.49.132
someinternalhost_IP = 10.128.0.4
ssh -J appuser@130.193.49.132 appuser@10.128.0.4
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
