if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/servicebyoop/Jarvistg.git /Jarvistg
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria
fi
cd /Jarvistg
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
